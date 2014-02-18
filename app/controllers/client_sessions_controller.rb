class ClientSessionsController < ApplicationController

	def new
		@client = Client.new
	end
	
	def create
		if @client = login(params[:user],params[:passw])
			redirect_back_or_to(items_path, message: "Login exitoso")
		else
			flash.now[:alert] = "Algo salio mal con el login"
			render action: :new
		end
	end
	
	def destroy
		logout
		redirect_to(:clients, message: "Sesion finalizada")
	end

end