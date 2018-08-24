FROM alpine:3.7

RUN apk add --no-cache python py-pip py-setuptools ca-certificates libmagic
RUN pip install python-dateutil python-magic

ARG S3CMD_CURRENT_VERSION=2.0.2
ENV S3CMD_CURRENT_VERSION=$S3CMD_CURRENT_VERSION

RUN mkdir -p /opt \
    && wget https://github.com/s3tools/s3cmd/releases/download/v${S3CMD_CURRENT_VERSION}/s3cmd-${S3CMD_CURRENT_VERSION}.zip \
    && unzip s3cmd-${S3CMD_CURRENT_VERSION}.zip -d /opt/
RUN ln -s /opt/s3cmd-${S3CMD_CURRENT_VERSION}/s3cmd /usr/bin/s3cmd

ENV ENV="/etc/profile"
ADD bin/update.sh /etc/profile.d/

WORKDIR /tmp
