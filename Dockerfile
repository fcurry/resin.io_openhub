FROM resin/rpi-raspbian:jessie

# Install OpenJDK 7
# Remove package lists to free up space
RUN apt-get update	&& apt-get install -y openjdk-7-jdk	&& rm -rf /var/lib/apt/lists/*

# Install the UPS Support
# RUN wget http://raspi-ups.appspot.com/upsd/upsd_1.2-1.deb && sudo dpkg -i upsd_1.2-1.deb

ADD . /App/
RUN mv /App/start.sh /start.sh

CMD ["bash", "start.sh"]
