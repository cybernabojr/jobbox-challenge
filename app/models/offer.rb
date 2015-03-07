class Offer < ActiveRecord::Base
#Hack to have column type in offers
self.inheritance_column = :_type_disabled

#relations
belongs_to :company


end
