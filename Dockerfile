FROM pypy:3
ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
COPY start.sh start.sh
COPY src src
WORKDIR /src/Reynir
RUN apt-get update
RUN apt-get install dialog apt-utils locales -y
RUN sed -i -e 's/# is_IS.UTF-8 UTF-8/is_IS.UTF-8 UTF-8/' /etc/locale.gen && locale-gen
ENV LANG is_IS.UTF-8
ENV LC_ALL is_IS.UTF-8
ENV LANGUAGE is_IS:is
RUN update-locale
RUN dpkg-reconfigure locales
RUN pip install --upgrade pip && pip install -r requirements.txt
