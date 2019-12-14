#!/bin/bash

echo "TICK stack stop in progress...."

sudo service chronograf  stop
sudo service kapacitor stop
sudo service telegraf  stop
sudo service influxdb  stop

echo "TICK stack stopped successfully...."