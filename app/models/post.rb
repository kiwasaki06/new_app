class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true
end
