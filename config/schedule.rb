# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

set :output, "log/whenever_log.log"

# refresh databases every 2 hours to remove dead job offers and add new job offers on JOBBOX
every 120.minute do
  rake :repopulate_database_from_jobbox_api
end
# Learn more: http://github.com/javan/whenever
