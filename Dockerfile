FROM ruby:3.1.2-alpine3.16

RUN apk add --no-cache g++ \
  make \
  curl \
  && rm -rf /var/cache/apk/*

WORKDIR /var/app

COPY . .

RUN bundle install

EXPOSE 80

CMD [ "bundle", "exec", "rails", "server", "-p", "80", "-b", "0.0.0.0" ]
