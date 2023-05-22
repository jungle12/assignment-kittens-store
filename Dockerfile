FROM ruby:2.4.9

RUN apt-get update && apt-get install -y postgresql-client

WORKDIR /kit

COPY . .

RUN bundle install

ENV RACK_ENV=production

CMD ["bundle", "exec", "rackup", "--port", "80", "--host", "0.0.0.0"]
