class EndUsers::FavoritesController < ApplicationController
require 'itunes-search-api'
def create
    current_end_user.like_this(clicked_track)
    flash[:success] = 'My Musicに追加しました！'
    redirect_to request.referer
  end

  def destroy
    current_end_user.likes.find_by(track_id: params[:track_id]).destroy
    flash[:danger] = 'My Musicから削除しました。'
    redirect_to request.referer
  end

  def clicked_track
    ITunesSearchAPI.find(params[:track_id])
  end