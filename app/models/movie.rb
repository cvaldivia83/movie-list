class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_exception
  has_many :lists, through: :bookmark
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :poster_url, presence: true
  validates :overview, presence: true
  validates :rating, presence: true
end
