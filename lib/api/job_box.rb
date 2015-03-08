require 'httparty'

class JobBox
  include HTTParty
  base_uri "http://www.jobbox.io/api/v1/"
  attr_accessor :headers
  def initialize
    self.headers = {"Authorization" => "Token token=#{ENV["jobbox_api_key"]}"}
  end
  # Returns the companies present at jobbox
  def companies( offset = 0, limit = 50)
    response = self.class.get("/companies.json?offset=#{offset}&limit=#{limit}", :headers => headers)
    if response.success?
      response
    else
      raise response.response
    end
  end
  # Returns the job offers present at jobbox
  def offers(  offset = 0, limit = 50)
    response = self.class.get("/offers.json?offset=#{offset}&limit=#{limit}", :headers => headers)
    if response.success?
      response
    else
      raise response.response
    end
  end

end
