class Client < ActiveRecord::Base
	has_many :carts, dependent: :destroy
	
	validates :user, :presence => true, :uniqueness => true
	
	validates :passw, :presence => true, :length => { :minimum => 8, :message => "Ingrese minimo 8 caracteres" } 

end
