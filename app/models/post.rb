class Post < ApplicationRecord
  validates :name, presence: true
  has_many :resumes
end
