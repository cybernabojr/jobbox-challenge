desc "Heroku scheduler tasks"

task :repopulate_database_from_jobbox_api => :environment do
  puts "Starting the scheduled process.."
  UpdateWorker.refresh_companies
  UpdateWorker.refresh_offers
  puts "Scheduler finished!"
end
