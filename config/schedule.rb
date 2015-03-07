# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
 set :output, "log/whenever_log.log"
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# refresh databases every 2 hours to remove dead job offers and add new job offers on JOBBOX
  every 1.minute do
    puts "Testing whenever"
    runner "UpdateWorker.refresh_companies"
    runner "UpdateWorker.refresh_offers"
  end
# Learn more: http://github.com/javan/whenever
