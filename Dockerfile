FROM resin/rpi-raspbian:jessie

# Install OpenJDK 7
RUN apt-get update
	&& apt-get install -y openjdk-7-jdk
	# Remove package lists to free up space
	&& rm -rf /var/lib/apt/lists/*

ADD . /App/
RUN mv /App/start.sh /start.sh

CMD ["bash", "start.sh"]
