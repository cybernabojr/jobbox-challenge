class SearchController < ApplicationController
  #Search for skills in job offers
  def search
    #Make sure user selected either one button or searched keywords
    if params[:q].nil? && params["/search"].nil?
      @offers = []
      @companies = []
      return
      #If user searched using our buttons
    elsif params[:q].nil?
      hits = []
      #iterate to search for each selected skill in job offers
      #.reject! removes the empty field that simple_form sends in params
      params["/search"]["query"].reject!(&:empty?).each do |q|
        #Get the offers for each button and push them in the hits array
        @offers = Offer.search(q).records
        hits.push(*@offers.results)
      end
      #collect all company ids
      company_ids = hits.map { |r| r.company_id }
      #collect respective companies to display
      @companies = Company.where(:id => company_ids)
    else
      #User searched manually, preety straight forward here
      @offers = Offer.search(params[:q]).records
      company_ids = @offers.map { |r| r.company_id }
      @companies = Company.where(:id => company_ids)
    end
  end
end
