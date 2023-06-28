class Book < ApplicationRecord

  has_one_attached :profile_image
  belongs_to :user

  validates :title,presence:true
  validates :body, length:{ minimum: 1, maximum:200 }

  def get_profile_image
    (profile_image.attached?) ? profile_image : 'no_image.jpg'
  end
end