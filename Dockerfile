FROM resin/raspberrypi3-debian:stretch
WORKDIR /app
RUN apt-get update && apt-get install --yes build-essential unzip wget bluetooth bluez libbluetooth-dev libudev-dev libcap2-bin make npm 

COPY BoT-NodeJS-SDK .
RUN make install


USER root
CMD make server




