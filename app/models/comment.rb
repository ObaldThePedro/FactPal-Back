class Comment < ApplicationRecord
  belongs_to :fact
  belongs_to :user

  validates :text, length: {minimum: 2}, allow_blank: true
end
