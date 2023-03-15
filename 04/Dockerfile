FROM debian

COPY hello.c /home/hello.c
COPY run.sh /home/run.sh

WORKDIR /home

RUN apt update && apt install -y \
    gcc \
    libfcgi-dev \
    spawn-fcgi \ 
    nginx \
    && chmod +x run.sh

COPY nginx.conf /etc/nginx/nginx.conf

ENTRYPOINT [ "./run.sh" ]


