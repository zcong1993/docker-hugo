FROM alpine:3.6

ENV HUGO_VERSION 0.32.2

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz /tmp/hugo.tar.gz

RUN cd /tmp \
  && tar -zxvf hugo.tar.gz \
  && cp hugo /usr/bin/hugo \
  && rm -rf /tmp/hugo*
