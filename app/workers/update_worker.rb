class UpdateWorker
  include Sidekiq::Worker
  include HTTParty

  def self.save_company(company)
    Company.create(company)
  end

  def self.save_offer(offer)
    Offer.create(offer)
  end

  def self.update_companies
    puts 'Fetching companies from Jobbox API'
    #JobBox handles the http calls to the API
    api_caller = JobBox.new
    #Cursor for api calls since they are paginated
    offset = 0
    while true
      response = UpdateWorker.new.companies(offset)
      if response.success?
        #If response is empty, there are no more companies
        response.size == 0 ? break : ''
        #For each company in response, add them to the Database
        response.each do |r|
          self.save_company(r)
        end
        #Move cursor forward, api_limit is 50
        offset += 50
      else
         puts 'something went wrong while updating companies!'
        raise response.response
        break
      end
    end

      puts "Finished fetching the companies"

  end

  def self.update_offers
    puts 'Fetching offers from Jobbox API'
    #JobBox handles the http calls to the API
    api_caller = JobBox.new
    #Cursor for api calls since they are paginated
    offset = 0
    while true
      response = UpdateWorker.new.offers(offset)
      if response.success?
        #If response is empty, there are no more offers
        response.size == 0 ? break : ''
        #For each offer in response, add them to the Database
        response.each do |r|
          self.save_offer(r)
        end
        #Move cursor forward, api_limit is 50
        offset += 50
      else
         puts 'something went wrong while updating offers!'
        raise response.response
        break
      end
    end

      puts "Finished fetching the offers"

  end

  def self.refresh_companies
    puts 'Refreshing Companies...'
    puts 'Deleting all cached Companies...'
      Company.delete_all
    puts 'All cached companies removed...'
      self.update_companies
    puts 'Finished refreshing Companies'
  end

  def self.refresh_offers
    puts 'Refreshing Offers...'
    puts 'Deleting all cached Offers...'
      Offer.delete_all
    puts 'All cached Offers removed...'
      self.update_offers
    puts 'Finished refreshing Offers'
  end

  base_uri "http://www.jobbox.io/api/v1/"
  attr_accessor :headers
  def initialize
    self.headers = {"Authorization" => "Token token=#{ENV["jobbox_api_key"]}"}
  end
  # Returns the companies present at jobbox
  def companies( offset = 0, limit = 50)
    response = UpdateWorker.get(UpdateWorker.base_uri+"/companies.json?offset=#{offset}&limit=#{limit}", :headers => headers)
    if response.success?
      response
    else
      raise response.response
    end
  end
  # Returns the job offers present at jobbox
  def offers(  offset = 0, limit = 50)
    response = UpdateWorker.get(UpdateWorker.base_uri+"/offers.json?offset=#{offset}&limit=#{limit}", :headers => headers)
    if response.success?
      response
    else
      raise response.response
    end
  end


end

