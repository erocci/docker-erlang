FROM debian:jessie
MAINTAINER Jean Parpaillon <jean.parpaillon@free.fr>

ENV DEBIAN_FRONTEND noninteractive

ADD erlang-solutions.list /etc/apt/sources.list.d/erlang-solutions.list
ADD erlang-solutions.pref /etc/apt/preferences.d/erlang-solutions.pref

RUN apt-get update

RUN apt-get -y --force-yes install --no-install-recommends \
    erlang-base erlang-dev erlang-crypto erlang-parsetools erlang-ssh erlang-ssl erlang-tools erlang-mnesia \
    erlang-eunit erlang-parsetools erlang-syntax-tools erlang-inets  erlang-public-key erlang-runtime-tools \
    erlang-webtool erlang-xmerl \
    ca-certificates && \
    apt-get clean

CMD [ "/usr/bin/erl" ]
