FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim

RUN mkdir /kimono
WORKDIR /kimono

COPY Gemfile /kimono/Gemfile
COPY Gemfile.lock /kimono/Gemfile.lock

RUN bundle install
COPY . /myapp
ENV RUBYOPT -EUTF-8