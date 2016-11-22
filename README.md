# docker netatmo influxdb python

latest version is 0.2.0

```
docker pull manabuishii/docker-netatmo-influxdb-python:0.2.0
```

# Prepare InfluxDB

If you don't have InfluxDB, you need to prepare.

```
mkdir influxdbdata
docker run -p 8083:8083 -p 8086:8086 \
  -v $PWD/influxdbdata:/var/lib/influxdb \
  --name influxdb influxdb:1.0.2-alpine
```

## Create database

Create Database on the web

```
http://localhost:8083
```

# HOW TO RUN

Fill your value of netatmo and influxdb environment.


```
docker run --rm \
 -link influxdb:influxdb \
 -e NETATMO_CLIENT_ID="" \
 -e NETATMO_CLIENT_SECRET="" \
 -e NETATMO_USERNAME="" \
 -e NETATMO_PASSWORD="" \
 -e INFLUXDB_HOST="" \
 -e INFLUXDB_PORT="" \
 -e INFLUXDB_USERNAME="" \
 -e INFLUXDB_PASSWORD="" \
 -e INFLUXDB_DATABASE="" \
 --name YOURDOCKERHOSTNAME \
 manabuishii/docker-netatmo-influxdb-python:0.2.0
```

Polling 1 per 60 seconds.


# Check

From Web.

Select your database

# debug

Pass environment value `DEBUG` is set 'True'

```
-e DEBUG=true
```

# Sample query for web

## latest 5 CO2 value

```
select value,host from CO2 order by time DESC limit 5;
```

## latest 5 CO2 value of YOURMODULEID

```
select value,host from CO2 where host='YOURMODULEID' order by time DESC limit 5;
```
