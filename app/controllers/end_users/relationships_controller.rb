class EndUsers::RelationshipsController < ApplicationController

	def create
		@end_user = EndUser.find(params[:relationship][:follow_id])
		following = current_end_user.follow(@end_user)
		if following.save
			flash[:success] = 'ユーザーをフォローしました！'
			redirect_to @end_user
		else
			flash.now[:alert] = 'ユーザーのフォローに失敗しました…。'
			redirect_to @end_user
		end
	end

	def destroy
		@end_user = EndUser.find(params[:relationship][:follow_id])
		following = current_end_user.unfollow(@end_user)
		if following.destroy
			flash[:success] = 'ユーザーのフォローを解除しました。'
			redirect_to @end_user
		else
			flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました…。'
			redirect_to @end_user
		end
	end


end
