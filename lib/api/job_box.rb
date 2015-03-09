require 'rubygems'
require 'httparty'

class JobBox
  include HTTParty
  base_uri "https://www.jobbox.io/api/v1/"
  attr_accessor :headers
  def initialize(headers)
    self.headers = headers
    puts "Headers = " + self.headers.to_s
  end
  # Returns the companies present at jobbox
  def companies( offset = 0, limit = 50)
    response = HTTParty.get(JobBox.base_uri+"/companies.json?offset=#{offset}&limit=#{limit}", :headers => self.headers)
    if response.success?
      response
    else
      raise response.response
    end
  end
  # Returns the job offers present at jobbox
  def offers(  offset = 0, limit = 50)
    response = HTTParty.get(JobBox.base_uri+"/offers.json?offset=#{offset}&limit=#{limit}", :headers => self.headers)
    if response.success?
      response
    else
      raise response.response
    end
  end

end
