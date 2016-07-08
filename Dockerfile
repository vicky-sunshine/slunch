FROM rails

RUN mkdir /slunch

ADD . /slunch
WORKDIR /slunch

RUN bundle install

RUN cp config/application.yml.sample config/application.yml && \
    rake db:create && \
    rake db:migrate && \
    rake import_data:lunch
