FROM ruby:2.6.0

WORKDIR /usr/app

RUN apt-get update && \
    apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/rails-example-project.git . && \
    bundle install && \
    rails db:migrate

CMD ["rails", "s"]