class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum sex:    [ :male, :female, :other ]

  has_many :mylists, dependent: :destroy
  has_many :mylist_tracks, through: :mylists, source: :track
end
