FROM ruby:3.2.3

COPY app /app

WORKDIR /app

RUN bundle install

EXPOSE 1025 1080

CMD ["bundle", "exec", "mailcatcher", "-f", "--ip", "0.0.0.0"]
