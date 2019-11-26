FROM pypy:3
ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive
RUN mkdir -p /reynir/logs
COPY conf/bin /reynir/bin
COPY src /reynir/src
COPY docker_requirements.txt /reynir/docker_requirements.txt
WORKDIR /reynir/src/Greynir
RUN apt-get update
RUN apt-get install dialog apt-utils locales cron curl libgeos-dev git -y
RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
RUN apt-get install git-lfs=2.6.1 -y
RUN sed -i -e 's/# is_IS.UTF-8 UTF-8/is_IS.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LANG is_IS.UTF-8
ENV LC_ALL is_IS.UTF-8
ENV LANGUAGE is_IS:is
RUN update-locale
RUN dpkg-reconfigure locales
RUN pip install --upgrade pip && pip install -r requirements.txt && pip install -r ../../docker_requirements.txt
RUN cp -r /usr/local/site-packages/reynir/ /usr/local/reynir_orig
