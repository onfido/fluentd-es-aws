FROM fluent/fluentd:v1.3-debian-onbuild
ARG VERSION=1.3
LABEL maintainer "Adrian Fedoreanu <adrian.fedoreanu@spoud.io>"
LABEL Description="Fluentd ES AWS Docker image" Version=${VERSION}

RUN buildDeps="sudo make gcc g++ libc-dev ruby-dev" \
 && apt-get update \
 && apt-get install -y --no-install-recommends $buildDeps \
 && sudo gem install \
        `cat /fluentd/plugins/plugins` \
 && sudo gem sources --clear-all \
 && SUDO_FORCE_REMOVE=yes \
    apt-get purge -y --auto-remove \
                  -o APT::AutoRemove::RecommendsImportant=false \
                  $buildDeps \
 && rm -rf /var/lib/apt/lists/* \
           /home/fluent/.gem/ruby/2.3.0/cache/*.gem
