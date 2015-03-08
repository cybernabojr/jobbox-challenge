require 'httparty'

desc "Heroku scheduler tasks"

task :repopulate_database_from_jobbox_api => :environment do
  puts "Starting the scheduled process.."
  UpdateWorker.new.refresh_companies
  UpdateWorker.new.refresh_offers
  puts "Scheduler finished!"
end
