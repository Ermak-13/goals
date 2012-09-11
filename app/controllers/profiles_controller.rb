class ProfilesController < ApplicationController
	def index
		@user = current_user
		@interests = Interest.all
	end

	def show
		@user = User.find params[:id]
	end
end