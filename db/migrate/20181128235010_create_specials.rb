class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.string :name
      t.integer :length
      t.string :image_location
      t.integer :comedian_id
      
      t.timestamps null: false      
    end
  end
end
