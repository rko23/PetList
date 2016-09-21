class OwnersController < ApplicationController
	def index
		@owners = Owner.all
	end

	def new
	end

	def create
		owner = Owner.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])

		if owner.valid?
			redirect_to "/owners"
		else
			flash[:error] = "Sorry, could not sign up that owner."
			redirect_to "/owners/new"
		end

	end
end
