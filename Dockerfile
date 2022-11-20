FROM ruby:3.0.4

WORKDIR /web

RUN apt update 
RUN gem install bundler

COPY Gemfile* web/

RUN cd web && bundle install

EXPOSE 3000