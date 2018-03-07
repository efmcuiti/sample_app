class User < ApplicationRecord
    # To really ensure email uniqueness in all cases.
    before_save {email.downcase!}

    # Each user must have a non-empty name.
    validates :name, presence: true, length: { maximum: 50 }
    # Each user must have a non-empty and a valid email.
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, 
                                      format: { with: VALID_EMAIL_REGEX },
                                      uniqueness: { case_sensitive: false }
    # Each user must have a secure password.
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
end