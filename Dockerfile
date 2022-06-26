FROM dibssbd/ldsfs:v1

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8

ENV LANGUAGE en_US:en

ENV LC_ALL en_US.UTF-8

COPY . .

RUN chmod +x start.sh

RUN chmod +x fclone

CMD ["bash","start.sh"]
