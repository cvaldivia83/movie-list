class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  belongs_to :user
  validates :name, presence: true
  validates :name, uniqueness: true
  has_one_attached :photo
end
