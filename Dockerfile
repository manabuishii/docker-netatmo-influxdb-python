FROM python:2.7.12
RUN apt-get update ; apt-get install -y locales ; apt-get clean
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
RUN pip install pytz influxdb
ADD lnetatmo.py /
ADD netatmo2influxdb.py /
ADD get.sh /
CMD ["/get.sh"]
