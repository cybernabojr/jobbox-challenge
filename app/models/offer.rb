class Offer < ActiveRecord::Base
#Hack to have column type in offers
self.inheritance_column = :_type_disabled

#will paginate per_page conf
  self.per_page = 20

#relations
belongs_to :company


end
