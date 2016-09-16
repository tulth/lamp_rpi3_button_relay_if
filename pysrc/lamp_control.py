#!/usr/bin/env python
from __future__ import print_function
import sys
import paho.mqtt.client as mqtt

import time
import RPi.GPIO as GPIO


RELAY_OUT_PIN = 23
PUSHBUTTON_IN_PIN = 24


class LampControl(object):
    def __init__(self, broker, baseTopic):
        self._mqttc = mqtt.Client("lamp-agent")
        self._mqttc.on_message = self.mqtt_on_message
        self._mqttc.on_connect = self.mqtt_on_connect
        # self._mqttc.on_publish = self.mqtt_on_publish
        # self._mqttc.on_subscribe = self.mqtt_on_subscribe
        self.statusTopic = baseTopic
        self.setTopic = baseTopic + "/set"
        self._relayState = False
        super().__init__()
        self._mqttc.connect(broker)

    def mqtt_on_connect(self, mqttc, obj, flags, rc):
        self._mqttc.subscribe(self.setTopic)

    def mqtt_on_message(self, mqttc, obj, msg):
        payload = msg.payload.decode("utf-8")
        print(msg.topic, payload)
        if msg.topic == self.setTopic:
            try:
                if payload == '1':
                    self.relayState = True
                elif payload == '0':
                    self.relayState = False
            except Exception as err:
                print(err)
        print(msg.topic+" "+str(msg.qos)+" "+str(msg.payload))

    def mqtt_on_publish(self, mqttc, obj, mid):
        print("mid: "+str(mid))

    def mqtt_on_subscribe(self, mqttc, obj, mid, granted_qos):
        print("Subscribed: "+str(mid)+" "+str(granted_qos))

    @property
    def relayState(self):
        return self._relayState

    @relayState.setter
    def relayState(self, val):
        self._relayState = val
        GPIO.output(RELAY_OUT_PIN, self._relayState)
        self.publish(self.statusTopic, payload=str(int(self._relayState)), retain=True, qos=1)

    def toggle(self, channel):
        print("Falling edge detected. Toggling state")
        self.relayState = not self.relayState


def configPins():
    GPIO.setmode(GPIO.BCM)
    GPIO.setup(PUSHBUTTON_IN_PIN, GPIO.IN, pull_up_down=GPIO.PUD_UP)
    GPIO.setup(RELAY_OUT_PIN, GPIO.OUT)
    GPIO.output(RELAY_OUT_PIN, False)


def main(args):
    configPins()
    mqttTopic = open("/opt/lamp_control/mqtt_topic.txt", 'r').read().strip()
    print(mqttTopic)
    mqttBroker = open("/opt/lamp_control/broker.txt", 'r').read().strip()
    print(mqttBroker)
    lampCtrl = LampControl(mqttBroker, mqttTopic)
    GPIO.add_event_detect(PUSHBUTTON_IN_PIN,
                          GPIO.FALLING,
                          callback=lampCtrl.toggle,
                          bouncetime=300, )  # in milliseconds
    lampCtrl._mqttc.loop_forever()


if __name__ == "__main__":
    try:
        sys.exit(main(sys.argv))
    except Exception as err:
        print(err)
    finally:
        GPIO.cleanup()
