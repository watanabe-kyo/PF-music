require 'itunes-search-api'

class SearchClient
    def self.main
        
        ITunesSearchAPI.search(
            :term    => "ポルノグラフィティ",
            :country => 'jp',
            :media   => 'music',
            :lang    => 'ja_jp',
            :limit  => '10'
            ).each do |item|
            p item
            print("#{item['artistName']},#{item['trackName']}\n")
        end
    end
end