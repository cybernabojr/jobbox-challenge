class SearchController < ApplicationController

def search
  if params[:q].nil?
    @offers = []
    @companies = []
  else
    @offers = Offer.search(params[:q]).records
     hits = @offers.results

    #collect all company ids
    company_ids = hits.results.map { |r| r.company_id }

    #collect respective companies to display"
    @companies = Company.where(:id => company_ids)

  end

end

end
