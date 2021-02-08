class EndUsers::EndUsersController < ApplicationController
	before_action :authenticate_end_user!
	def show
		@end_user = EndUser.find(params[:id])
		@follower = current_end_user.relationships.find_by(follow_id: @end_user.id)
	end
end
