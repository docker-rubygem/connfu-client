FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.6

RUN gem install connfu-client --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["connfu-client"]
CMD ["--help"]
