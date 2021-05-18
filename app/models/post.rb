class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :comments
  has_one_attached :image
  
  validates :title,presence: true
  validates :catch,  presence: true
  validates :concept,presence: true
  validates :image, presence: true
end