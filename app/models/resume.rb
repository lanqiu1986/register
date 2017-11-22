class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :school, presence: true
  validates :major, presence: true
  validates :phonenumber, presence: true, length: {is: 11}
  GENDER = ["男","女"]
  validates_inclusion_of :gender, :in => GENDER


end
