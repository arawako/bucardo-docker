FROM ubuntu:16.04

LABEL mantainer="Jose Subero | @arawako | leonel@vauxoo.com"
LABEL version="0.10"

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

RUN apt-get install wget ca-certificates \
	&& wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
	&& apt-get -y update \
	&& apt-get -y upgrade \
	&& apt-get -y install postgresql-9.6 postgresql-plperl-9.6 bucardo
