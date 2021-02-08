class EndUsers::MylistsController < ApplicationController
    before_action :authenticate_end_user!

    def create

        @list = Mylist.new
        @list.end_user_id = current_end_user.id
        @list.track_id = params[:track_id]
        @list.collection_id = params[:collection_id]
        @list.save
    end
    
    def destroy
        @mylist = Mylist.find_by(end_user_id: current_end_user, track_id: params[:track_id], collection_id: params[:collection_id])
        @mylist.destroy
    end 
    
    def show
        @mylists = Mylist.where(end_user_id: params[:id])
        @end_user = EndUser.find(params[:id])
    end
end
