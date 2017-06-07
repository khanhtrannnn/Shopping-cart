class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :unit_price
      t.integer :amount
      t.references :product_type, foreign_key: true

      t.timestamps
    end
  end
end
