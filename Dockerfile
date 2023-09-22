# syntax=docker/dockerfile:1
FROM ruby:3.2.2-slim
RUN mkdir -p /etc/apt/keyrings
RUN apt-get update -qq && apt-get install -y ca-certificates curl gnupg build-essential
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt-get update -qq && apt-get install -y nodejs libpq5 libpq-dev git postgresql-client

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install
# COPY . .
# ADD . /usr/src/app/
RUN rails new . --force --database=postgresql
# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "s", "-b", "0.0.0.0"]
