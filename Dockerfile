FROM python:2.7.12
RUN pip install pytz influxdb
ENV PYTHONIOENCODING=utf-8
ADD lnetatmo.py /
ADD netatmo2influxdb.py /
ADD get.sh /
CMD ["/get.sh"]
