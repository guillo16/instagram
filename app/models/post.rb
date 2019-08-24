class Post < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :photo, presence: true
end
