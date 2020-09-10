FROM maven:3.6.3-jdk-11-slim

RUN apt-get update && apt-get install -y build-essential libz-dev zlib1g-dev
ENV GRAALVM_HOME /opt/graalvm-ce-java11-20.2.0
RUN curl -L https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-20.2.0/graalvm-ce-java11-linux-amd64-20.2.0.tar.gz | tar -xz -C /opt

RUN ${GRAALVM_HOME}/bin/gu install native-image

