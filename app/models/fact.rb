class Fact < ApplicationRecord
  belongs_to :user
  has_many :likes, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  

  validates :text, length: {minimum: 10}, allow_blank: true
end
