# README

SLUNCH is a slackbot that will remind you that it's lunch time, and randomly pick out recommendations based on your own list. Handy for teams that tend to loose track of time when busy coding, and have no idea where to eat when they do get hungry.

## System Requirements

* Ruby 2+
* Rails 4+

## Installation

Starts like any another  Rails app:

```
$ git clone git@github.com:jodeci/slunch.git  
$ bundle install  
$ cp config/application.yml.sample config/application.yml  
$ rake db:create
$ rake db:migrate
```

## Preparing SLUNCH

You will of course need a slackbot and API token. I'll leave that to the [Slack documentations](https://api.slack.com/bot-users). Once you're done with that,  fill in the information in:

`config/application.yml`

Don't know your channel id? We've got you covered:

`$ rake slackbot:channels`

Next, you need to build your lunch list. I haven't bothered to build the UI (yet), so in the meantime just edit:

`lib/tasks/lunch.yml`

and import away:

`$ rake import_data:lunch`

and you're done!

## Customizing SLUNCH

The default timer is set to 12:30 from Monday to Friday. Tune it to your likings at:

`config/schedule.rb`

Don't like the default message? Make your own!

`lib/taks/slackbot.rake`

## ...and start it up!

Gotta keep the timer kicking!

`$ whenever -i`
