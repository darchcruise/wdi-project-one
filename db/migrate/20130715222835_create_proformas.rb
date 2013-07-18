class CreateProformas < ActiveRecord::Migration
  def up
    create_table :proformas do |t|
      t.integer :users_id
      t.string :name
      t.string :address
      t.string :state
      t.integer :sqft, default: 20000
      t.integer :units, default: 100
      t.integer :purchase_price, default: 100000
      t.integer :sale_price, default: 150000
      t.float :rev_growth, default: 0.03
      t.float :opex_growth, default: 0.025
      t.float :vacancy, default: 0.100
      t.float :discount_rate, default: 0.07
    t.timestamps
    end
  end

  def down
    drop_table :proformas
  end
end
