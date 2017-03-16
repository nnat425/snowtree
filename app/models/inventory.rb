class Inventory < ApplicationRecord
  validates_presence_of :type
  validates_presence_of :material_name
  validates_presence_of :grade_number
  validates_presence_of :form
  validates_presence_of :color
  validates_presence_of :quantity
end
