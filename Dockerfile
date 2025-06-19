FROM python:3.11-slim

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080

CMD ["sh", "-c", "echo 'Entrypoint content:' && cat /entrypoint.sh && echo 'File info:' && file /entrypoint.sh && bash /entrypoint.sh"]
