FROM ruby:3.1

RUN mkdir /pai-app
WORKDIR /pai-app
COPY Gemfile /pai-app/Gemfile
COPY Gemfile.lock /pai-app/Gemfile.lock

# Bundlerの不具合対策(1)
RUN gem update --system
RUN bundle update --bundler

RUN bundle install
COPY . /pai-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
