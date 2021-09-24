FROM ruby:2.7-bullseye

ADD app.rb .
ADD Gemfile .

RUN bundle install

ENTRYPOINT ["bundle", "exec", "ruby", "app.rb"]