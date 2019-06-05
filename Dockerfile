FROM ruby:2.6-alpine

ARG version

RUN gem install fakeit -v $version

EXPOSE 8080

ENTRYPOINT ["fakeit"]
