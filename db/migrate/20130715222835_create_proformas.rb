class CreateProformas < ActiveRecord::Migration
  def up
    create_table :proformas do |t|
      t.integer :users_id
      t.string :name
      t.string :address
      t.string :state
      t.integer :sqft
      t.integer :units
      t.integer :purchase_price
      t.integer :sale_price
      t.float :rev_growth
      t.float :opex_growth
      t.float :vacancy
      t.float :discount_rate
    t.timestamps
    end
  end

  def down
    drop_table :proformas
  end
end
