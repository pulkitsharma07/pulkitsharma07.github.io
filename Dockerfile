FROM ruby:2.5.1

WORKDIR /home/pulkitsharma07.github.io/

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

COPY Gemfile .
RUN bundle install

CMD ["/bin/bash"]

