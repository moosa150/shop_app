class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :detail
      t.integer :price
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
