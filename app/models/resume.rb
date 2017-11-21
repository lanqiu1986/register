class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :school, presence: true
  validates :major, presence: true


end
