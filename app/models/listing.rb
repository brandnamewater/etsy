class Listing < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "jimmycaryy.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name, :description, :price, :response_time, presence: true
  validates :price, numericality: { greater_than: 1 }
  validates_attachment_presence :image

  belongs_to :user
end
