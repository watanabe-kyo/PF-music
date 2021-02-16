class EndUsers::EndUsersController < ApplicationController
	before_action :authenticate_end_user!
	def show
		@end_user = EndUser.find(params[:id])
		@follower = current_end_user.relationships.find_by(follow_id: @end_user.id)
	end

	def following
		@end_user = EndUser.find(params[:id])
		@end_user.followings.each do |following|
			@follower = current_end_user.relationships.find_by(follow_id: following.id)
		end
	end

	def follower
		@end_user = EndUser.find(params[:id])
		@end_user.followers.each do |follower|
			@follower = current_end_user.relationships.find_by(follow_id: follower.id)
		end
	end
end
