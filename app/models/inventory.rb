class Inventory < ApplicationRecord
  validates_presence_of :content
  validates_presence_of :material_name
  validates_presence_of :grade_number
  validates_presence_of :form
  validates_presence_of :color
  validates_presence_of :quantity
  validates_presence_of :image

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "missing"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
