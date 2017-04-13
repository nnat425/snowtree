class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.references :inventory, index: true 
      t.timestamps null: false
    end
  end
end
