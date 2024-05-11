FROM amazoncorretto:21

WORKDIR /var/build-tools

RUN yum install -y wget git && \
    wget -O velocity.jar https://api.papermc.io/v2/projects/velocity/versions/3.3.0-SNAPSHOT/builds/390/downloads/velocity-3.3.0-SNAPSHOT-390.jar

VOLUME /var/velocity
WORKDIR /var/velocity

EXPOSE 25577/tcp
EXPOSE 25577/udp

CMD ["java", "-Xms512M", "-Xmx512M", "-XX:+UseG1GC", "-XX:G1HeapRegionSize=4M", "-XX:+UnlockExperimentalVMOptions", "-XX:+ParallelRefProcEnabled", "-XX:+AlwaysPreTouch", "-jar", "/var/build-tools/velocity.jar"]