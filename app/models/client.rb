class Client < ActiveRecord::Base
	has_many :carts, dependent: :destroy
end
