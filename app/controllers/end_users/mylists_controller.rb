class EndUsers::MylistsController < ApplicationController
    def create
        @mylist = Mylist.new
        @mylist.end_user_id = current_end_user.id
        @mylist.track_id = params[:track_id]
        @mylist.collection_id = params[:collection_id]
        @mylist.save
        redirect_to request.referer
    end
    
    def destroy
        @mylist = Mylist.find_by(end_user_id: current_end_user, track_id: params[:track_id], collection_id: params[:collection_id])
        @mylist.destroy
        redirect_to request.referer
    end 
    
    def show
        @mylists = Mylist.where(end_user_id: params[:id])
        @end_user = EndUser.find(params[:id])
    end
end
