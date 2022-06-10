FROM alpine:edge
# Adapted from original by "Ilya Glotov <ilya@ilyaglotov.com">
RUN apk --update --no-cache add ldns python3 wget
RUN apk --no-cache --virtual .deps add ldns-dev \
                                        git \
                                        build-base \
  && git clone https://github.com/blechschmidt/massdns.git \
  && (cd massdns; make) \
  && apk del .deps
ADD https://raw.githubusercontent.com/janmasarik/resolvers/master/resolvers.txt /resolvers.txt
ADD https://raw.githubusercontent.com/assetnote/commonspeak2-wordlists/master/subdomains/subdomains.txt /subdomains.txt
ADD online_resolver_massdns.sh /online_resolver_massdns.sh
RUN apk add coreutils
ENTRYPOINT ["/online_resolver_massdns.sh"]
