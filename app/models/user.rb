class User < ApplicationRecord
  has_secure_password
  has_many :habits, dependent: :destroy
end
