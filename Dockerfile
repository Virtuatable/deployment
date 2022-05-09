FROM ruby:3.0.0

COPY . .

RUN gem install bundler
RUN bundle install

CMD ["bundler", "exec", "puma"]