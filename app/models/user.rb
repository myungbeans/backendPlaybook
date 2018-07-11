class User < ApplicationRecord
    has_many :plays
    
    has_secure_password

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :password, presence: true
    validates :email, presence: true, uniqueness: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/
end
