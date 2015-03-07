class Company < ActiveRecord::Base

#will paginate per_page conf
  self.per_page = 15

#relations
  has_many :offers

end
