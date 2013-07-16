class CreateRevenues < ActiveRecord::Migration
  def up
    create_table :revenues do |t|
    t.float    :rent
    t.float    :parking
    t.float    :storage
    t.float    :pet
    t.float    :laundry
    t.float    :vending
    t.integer  :proforma_id
    t.timestamps
    end
  end

  def down
    drop_table :revenues
  end
end





