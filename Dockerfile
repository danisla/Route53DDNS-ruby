FROM ruby:wheezy

WORKDIR /opt/app/

ADD Gemfile /opt/app/
RUN bundle install

ADD route53_ddns.rb /opt/app/
RUN chmod +x /opt/app/route53_ddns.rb

ADD start.sh /opt/app/
RUN chmod +x /opt/app/start.sh

ENTRYPOINT /opt/app/start.sh
