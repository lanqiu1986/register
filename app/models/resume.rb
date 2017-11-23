class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :phonenumber, presence: true, length: {is: 11}
  GENDER = ["男","女"]
  validates_inclusion_of :gender, :in => GENDER
  EDUCATION = ["高中","大专","大本","硕士研究生","博士研究生","博士后"]
  validates_inclusion_of :educationfirst, :in => EDUCATION
  validates_inclusion_of :educationlast, :in => EDUCATION
  DEGREE = ["学士","硕士","博士","博士后"]
  validates_inclusion_of :degreefirst, :in => DEGREE
  validates_inclusion_of :degreelast, :in => DEGREE

  belongs_to :post, :optional => true

end
