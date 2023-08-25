FROM phusion/baseimage:bionic-1.0.0
LABEL maintainer="Ultichain Developers <dev@ultichain.org>"
LABEL description="Dockerised Ultichain, built from Travis"

ARG USER_ID
ARG GROUP_ID

ENV HOME /ultichain

# add user with specified (or default) user/group ids
ENV USER_ID ${USER_ID:-1000}
ENV GROUP_ID ${GROUP_ID:-1000}
RUN groupadd -g ${GROUP_ID} ultichain
RUN useradd -u ${USER_ID} -g ultichain -s /bin/bash -m -d /ultichain ultichain
RUN mkdir /ultichain/.ultichain
RUN chown ultichain:ultichain -R /ultichain

COPY bin/* /usr/local/bin/

RUN chmod a+x /usr/local/bin/*

USER ultichain

VOLUME ["/ultichain"]

EXPOSE 13643 9999 23643 23644

WORKDIR /ultichain
