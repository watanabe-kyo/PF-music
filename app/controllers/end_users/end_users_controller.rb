class EndUsers::EndUsersController < ApplicationController
	def show
		@user = current_end_user
	end
end
