class EndUsers::TracksController < ApplicationController
        require 'itunes-search-api'
    
    def search
        
        @tracks = ITunesSearchAPI
        
        @searchs = @tracks.search(
            :term    => params[:term],
            :country => 'jp',
            :media   => 'music',
            :lang    => 'ja_jp',
            :limit  => '1'
            ).each do |item|
            p item
            print("#{item['artistName']},#{item['trackName']}\n")
        end
    end 
    
    def show
        @list = Mylist.new
        @mylist = Mylist.find_by(end_user_id: current_end_user, track_id: params[:track_id], collection_id: params[:collection_id])
    end
    
end
