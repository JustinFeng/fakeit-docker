FROM ruby:3.1-alpine

ARG version

RUN gem install fakeit -v $version

EXPOSE 8080

ENTRYPOINT ["fakeit"]
