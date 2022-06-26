FROM python:3.8.5-slim-buster

WORKDIR /usr/src/app
COPY . .
RUN chmod 777 /usr/src/app && \
    apt-get -qq update && \
    apt-get -qq install -y git \
    locales python3-lxml \
    curl pv jq && \
    pip3 install --no-cache-dir -r requirements.txt && \
    apt-get -qq purge git && \
    locale-gen en_US.UTF-8 && \
    chmod +x start.sh && \
    chmod +x fclone
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
CMD ["bash","start.sh"]
