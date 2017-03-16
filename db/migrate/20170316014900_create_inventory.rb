class CreateInventory < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :type
      t.string :material_name
      t.integer :grade_number
      t.string :form
      t.string :color
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
