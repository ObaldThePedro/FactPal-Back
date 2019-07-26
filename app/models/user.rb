class User < ApplicationRecord
    #validations
    has_secure_password
    validates :email, uniqueness: true, presence: true
    
    #Relationships
    has_many :facts
    has_many :likes
    has_many :comments

end
