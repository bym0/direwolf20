# syntax=docker/dockerfile:1

FROM openjdk:19-jdk-buster

LABEL version="1.0.0"

RUN apt-get update && apt-get install -y curl dos2unix && \
 addgroup minecraft && \
 adduser --home /data --ingroup minecraft --disabled-password minecraft

COPY launch.sh /launch.sh
RUN dos2unix /launch.sh
RUN chmod +x /launch.sh

COPY serverinstall_95_2125 /serverinstall_95_2125
RUN chmod +x /serverinstall_95_2125

USER minecraft

VOLUME /data
WORKDIR /data

EXPOSE 25565/tcp

CMD ["/launch.sh"]

ENV MOTD "A Minecraft (FTB Presents Direwolf20 1.18 1.0.0) Server Powered by Docker"
ENV LEVEL world
ENV LEVELTYPE ""
ENV JVM_OPTS "-Xms2048m -Xmx6144m"
