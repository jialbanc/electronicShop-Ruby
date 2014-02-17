class Cart < ActiveRecord::Base
	belongs_to :client
	has_and_belongs_to_many :items
	
	validates :idcart, :presence => true, :uniqueness => true
	
end
