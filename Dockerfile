
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
gstreamer1.0-tools \
gstreamer1.0-plugins-base \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
gstreamer1.0-libav \
python3 python3-pip

WORKDIR /app

COPY . .

RUN chmod +x /app/script.sh

EXPOSE 10000 
EXPOSE 10001

#ENTRYPOINT ["/app/script.sh"]

#CMD ["gst-launch-1.0", "--version"]



