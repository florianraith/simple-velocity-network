FROM amazoncorretto:21

WORKDIR /var/build-tools

RUN yum install -y wget git && \
    wget -O paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/214/downloads/paper-1.21.4-214.jar


VOLUME /var/paper
WORKDIR /var/paper

EXPOSE 25565/tcp
EXPOSE 25565/udp

CMD ["java", "-jar", "/var/build-tools/paper.jar", "--nogui"]