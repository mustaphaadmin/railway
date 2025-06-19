FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN ls -l /entrypoint.sh && head -20 /entrypoint.sh

EXPOSE 8080

CMD ["bash", "/entrypoint.sh"]
