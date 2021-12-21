class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmark
  validates :name, presence: true
  validates :name, uniqueness: true
end
