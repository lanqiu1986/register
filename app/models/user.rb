class User < ApplicationRecord
  validates :name , presence :true, length: { maximun:50}
  validates :password, presence: true, length: { minimum: 6}
  has_secure_password
end
