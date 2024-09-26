class User < ApplicationRecord
  has_secure_password

  validates :username, :email, presence: true, uniqueness: true
  
  enum role: { client: 0, admin: 1  }
end
