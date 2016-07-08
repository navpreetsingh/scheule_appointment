class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :mrp
      t.string :brand
      t.string :name
      t.string :image
      t.string :url
      t.string :city
      t.string :category
      t.string :sku_id
      t.string :channel

      t.timestamps null: false
    end
  end
end
