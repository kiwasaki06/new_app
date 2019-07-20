class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true
end
