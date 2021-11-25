FROM ruby:3.0.2
ENV RACK_ENV production
CMD ["bundle", "exec", "rackup", "-p 9292"]