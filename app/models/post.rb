class Post < ApplicationRecord
  after_commit :create_hash_tags, on: :create
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :post_hash_tags
  has_many :hash_tags, through: :post_hash_tags
  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :photo, presence: true

  scope :of_followed_users, -> (following_users) { where user_id: following_users }

  def create_hash_tags
    extract_name_hash_tags.each do |name|
      hash_tags.create(name: name)
    end
  end

  def extract_name_hash_tags
    title.to_s.scan(/#\w+/).map{|name| name.gsub("#", "")}
  end
end
