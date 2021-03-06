FROM ubuntu:16.04

# 3rd party dependencies
#  * Nodejs
#  * Python
#  * Postgres client
#  * Git

RUN apt-get update && \
  apt-get install --reinstall -y ca-certificates && \
  apt-get install -y curl && \
  update-ca-certificates && \
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt-get install -y nodejs build-essential python python-dev python-pip libpq-dev libffi-dev git-all lib32ncurses5-dev locales

# Set language correctly

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# NPM configuration

RUN npm config set --global registry http://registry.npmjs.org/ && \
    npm config set --global strict-ssl false && \
    npm config set --global maxSockets 8

# Python configuration

RUN pip install --upgrade pip==9.0.3 && \
    pip install setuptools==41.2.0
