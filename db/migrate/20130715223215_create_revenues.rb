class CreateRevenues < ActiveRecord::Migration
  def up
    create_table :revenues do |t|
    t.float    :rent, default: 10000
    t.float    :parking, default: 2000
    t.float    :storage, default: 3000
    t.float    :pet, default: 1200
    t.float    :laundry, default: 3000
    t.float    :vending, default: 3000
    t.integer  :proforma_id, default: 0
    t.timestamps
    end
  end

  def down
    drop_table :revenues
  end
end





