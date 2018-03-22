FROM elixir:1.5.3-alpine

LABEL maintainer "potproject <https://github.com/potproject>"

WORKDIR /pleroma

RUN apk -U upgrade \
    && apk add -t build-dependencies \
    && apk add \
        build-base \
        wget \
        git \
    && rm -rf /tmp/* /var/cache/apk/*

RUN git clone -b develop https://git.pleroma.social/pleroma/pleroma.git /pleroma

RUN cd /pleroma \
    && mix local.rebar --force \
    && mix local.hex --force \
    && mix deps.get

#setting
COPY ./config/config.exs /pleroma/config/
COPY ./config/dev.secret.exs /pleroma/config/

RUN mkdir /pleroma/uploads
VOLUME /pleroma/uploads/
