class User < ApplicationRecord
    has_secure_password
    #validations
    validates_presence_of :email
    validates_uniqueness_of :email, case_sensitive: false
    validates_format_of :email, with: /@/

    before_save :downcase_email
    
    #Relationships
    has_many :facts
    has_many :likes
    has_many :comments

    def downcase_email
        self.email = self.email.delete(' ').downcase
    end

end
