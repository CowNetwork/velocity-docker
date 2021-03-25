FROM  adoptopenjdk/openjdk11:alpine-slim AS builder
WORKDIR /opt/velocity
ARG version
ADD https://versions.velocitypowered.com/download/$version.jar /opt/velocity/proxy.jar
RUN apk --update add --no-cache ca-certificates
CMD java -jar spigot.jar
