FROM ruby:3.0.3-onbuild
ENV RACK_ENV production
CMD ["bundle", "exec", "rackup", "-p 9292"]