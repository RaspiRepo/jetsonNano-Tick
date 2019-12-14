#!/bin/bash

echo "TICK stack start in progress...."

sudo service influxdb  start
sudo service telegraf  start
sudo service kapacitor start
sudo service chronograf start

echo "TICK stack started successfully...."
echo "Checking service status..."
./status-tick.sh