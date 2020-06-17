class User < ApplicationRecord
    has_many :applications, dependent: :destroy
    has_many :jobs , through: :applications
    validates :email, uniqueness: {case_sensitive: false}
    has_secure_password
end
