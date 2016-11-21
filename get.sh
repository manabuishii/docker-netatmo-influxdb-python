#!/bin/bash

while :
do
  python netatmo2influxdb.py
  sleep 60
done
