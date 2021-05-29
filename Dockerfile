FROM  gcr.io/distroless/java:11
WORKDIR /opt/velocity
ARG version
ADD https://versions.velocitypowered.com/download/$version.jar /opt/velocity/proxy.jar
CMD ["proxy.jar"]
