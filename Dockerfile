FROM ruby:2.6-alpine

RUN gem install fakeit

EXPOSE 8080

ENTRYPOINT ["fakeit"]
