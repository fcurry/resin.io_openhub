FROM resin/rpi-raspbian:jessie

# Install OpenJDK 7
# Remove package lists to free up space
RUN apt-get update	&& apt-get install -y openjdk-7-jdk	&& rm -rf /var/lib/apt/lists/* 

ADD . /App/

# Install the UPS Support
RUN dpkg -i /App/ups/upsd_1.2-1.deb
 
# mv /App/start.sh /start.sh

CMD ["bash", "/App/start.sh"]
