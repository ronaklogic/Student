class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :password_digest_confirmation, presence: true
  validates :password_digest, confirmation: true
end
