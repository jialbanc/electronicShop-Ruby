class Item < ActiveRecord::Base
	has_and_belongs_to_many :carts
	
	validates :code, :presence => true, :uniqueness => true
	
	validates :valor, :numericality => true 

end
