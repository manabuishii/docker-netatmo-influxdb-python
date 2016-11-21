FROM python:2.7.12
ADD lnetatmo.py /
ADD netatmo2influxdb.py /
# RUN python netatmo2influxdb.py
