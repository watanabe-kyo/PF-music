class Music < ApplicationRecord
    has_many :favorites, dependent: :destroy
    
    def favorited_by?(end_user)
        favorites.where(end_user_id: end_user.id).exists?
    end

end
