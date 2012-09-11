class InterestsController < ApplicationController
	def create
		@interest = Interest.find_or_create_by_name params[:interest]
		current_user.interests << @interest
		render :json => @interest
	end

	def destroy
		@interest = Interest.find params[:id]
		current_user.interests.delete @interest
		render :json => @interest
	end
end
