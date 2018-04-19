FROM ruby:2.3.4

RUN apt-get update
RUN apt-get install nodejs -y
RUN	apt-get autoclean -y && apt-get clean -y
RUN	gem install rails -v 5.0.2
RUN gem install bundler
RUN rails new server && cd server

EXPOSE 3000

ONBUILD COPY app/ /opt/app

WORKDIR /opt/app

ONBUILD RUN bundle install && \
	rake db:migrate && \
	rake db:setup && \
	rake db:seed
