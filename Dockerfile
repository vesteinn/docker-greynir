FROM pypy:3
ENV TERM linux
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /
COPY start.sh start.sh
COPY src src
WORKDIR /src/Reynir
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get install dialog apt-utils locales -y
RUN dpkg-reconfigure locales
RUN locale-gen is_IS.UTF-8
RUN update-locale





