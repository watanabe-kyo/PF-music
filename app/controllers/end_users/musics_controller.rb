class EndUsers::MusicsController < ApplicationController
  def search
    


  
      require 'itunes-search-api'
        
        @musics = ITunesSearchAPI
        
        @searchs = @musics.search(
            :term    => params[:term],
            :country => 'jp',
            :media   => 'music',
            :lang    => 'ja_jp',
            :limit  => '1'
            ).each do |item|
            p item
            print("#{item['artistName']},#{item['trackName']}\n")
          end
        @favorite = Favorite.new
            
            
       
      #   if params[:term].present?
	    	#   @search = Item.where('name LIKE ?', "%#{params[:name]}%")
	  		 # # モデルクラス.where("列名 LIKE ?", "%値%")  # 値(文字列)を含む
			   # # モデルクラス.where("列名 LIKE ?", "値_")   # 値(文字列)と末尾の1文字
		    # else
			   # @search = nil
	     # end
        end

  
end
