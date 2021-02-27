FROM ruby:3.0-alpine

ARG version

RUN gem install fakeit -v $version

EXPOSE 8080

ENTRYPOINT ["fakeit"]
