class Client < ActiveRecord::Base
	has_many :carts, dependent: :destroy
	validates :user, :presence => true, :uniqueness => true
	
	validates :passw, :presence => true, :confirmation => true, :length => { :minimum => 8 } , :message => "Ingrese mínimo 8 caracteres"
	validates :passw_confirmation, :presence => true
	
	validates :nombre, :allow_blank => true
end
