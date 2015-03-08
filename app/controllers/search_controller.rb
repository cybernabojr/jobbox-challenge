class SearchController < ApplicationController

def search
  #Get all skills present in job offers
  @params = params
  if params["/search"].nil?
    @offers = []
    @companies = []
  else
    @offers = Offer.search(params["/search"][":q"]).records
     hits = @offers.results

    #collect all company ids
    company_ids = hits.results.map { |r| r.company_id }

    #collect respective companies to display"
    @companies = Company.where(:id => company_ids)

  end

end



end
