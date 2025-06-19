FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    pip3 install flask && \
    mkdir -p /app/stream/output

WORKDIR /app

COPY entrypoint.sh /app/entrypoint.sh
COPY server.py /app/server.py

RUN chmod +x /app/entrypoint.sh

EXPOSE 8080

CMD ["/app/entrypoint.sh"]