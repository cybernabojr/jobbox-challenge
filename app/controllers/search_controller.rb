class SearchController < ApplicationController

def search
  #Get all skills present in job offers
  @params = params
  hits = []
  if params["/search"].nil?
    @offers = []
    @companies = []
  else
    params["/search"]["query"].reject!(&:empty?).each do |q|
    @offers = Offer.search(q).records
     hits.push(*@offers.results)
   end

    #collect all company ids
    company_ids = hits.map { |r| r.company_id }

    #collect respective companies to display"
    @companies = Company.where(:id => company_ids)

  end

end



end
