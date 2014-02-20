class Cart < ActiveRecord::Base
	belongs_to :client
	has_and_belongs_to_many :items
	
	def initialize
		@items = []
	end
	
	def add_item(item)
		@items << item
	end

end
