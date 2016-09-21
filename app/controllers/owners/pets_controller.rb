class Owners::PetsController < ApplicationController
	def new
		@owner = Owner.find(params[:owner_id])
	end

	def create
		pet = Owner.find(params[:owner_id]).pets.create(pet_name: params[:pet_name], age: params[:age], breed: params[:breed], photo: params[:photo])
		
		if pet.valid?
			redirect_to "/owners"
		else
			flash[:error] = "Unable to save pet"
			redirect_to "/back"
		end
	end
end
