FROM ruby:2.7-bullseye

RUN groupadd -g 469 app && useradd -ms /bin/bash -u 469 -g 469 app
USER app
WORKDIR /home/app

COPY --chown=app:app . .
RUN bundle install

ENTRYPOINT ["bundle", "exec", "ruby", "app.rb"]