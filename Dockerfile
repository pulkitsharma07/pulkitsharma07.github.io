FROM ruby:2.5.1

WORKDIR /home/pulkitsharma07.github.io/
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

CMD ["/bin/bash"]

