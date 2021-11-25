FROM ruby:3.0.2
ENV RACK_ENV production
RUN bundle config --global frozen 1
WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
CMD ["bundle", "exec", "rackup", "-p 9292"]