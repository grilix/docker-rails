FROM ruby:2.4.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
RUN touch /myapp/Gemfile.lock


ENV PORT=3000
ENV RACK_ENVIRONMENT=development
ENV HOST=0.0.0.0
EXPOSE 3000

RUN bundle install
