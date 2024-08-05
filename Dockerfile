# Use a base image with Java installed
FROM openjdk:8-jre-alpine

# Set environment variables
ENV ZAP_VERSION=2.10.0
ENV ZAP_HOME=/zap

# Install dependencies
RUN apk add --no-cache wget ca-certificates

# Download and install ZAP
RUN mkdir -p $ZAP_HOME && \
    wget -qO- https://github.com/zaproxy/zaproxy/releases/download/v${ZAP_VERSION}/ZAP_${ZAP_VERSION}_Core.zip | \
    unzip -d $ZAP_HOME - && \
    rm -rf $ZAP_HOME/*.bat

# Set working directory
WORKDIR $ZAP_HOME

# Expose ports
EXPOSE 8080 8090 8091

# Entry point
ENTRYPOINT ["java", "-Xmx512m", "-jar", "/zap/zap.jar"]
