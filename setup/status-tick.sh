#!/bin/bash

echo "influxdb  : " $(sudo service influxdb status | grep Active)
echo "telegraf  : " $(sudo service telegraf status | grep Active)
echo "kapacitor : " $(sudo service kapacitor status | grep Active)
echo "chronograf: " $(sudo service chronograf status | grep Active)