class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  has_many :reviews
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :poster_url, presence: true
  validates :overview, presence: true
  validates :rating, presence: true
end
