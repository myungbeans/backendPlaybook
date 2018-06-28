class User < ApplicationRecord
    has_many :plays
    
    has_secure_password

    validaes :username, presence: true, uniqueness:true
    validates :password, presence: true
    validates :email, presence: true, uniqueness:true
end
