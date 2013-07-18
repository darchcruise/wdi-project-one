class CreateRevenues < ActiveRecord::Migration
  def up
    create_table :revenues do |t|
    t.float    :rent, default: 0
    t.float    :parking, default: 0
    t.float    :storage, default: 0
    t.float    :pet, default: 0
    t.float    :laundry, default: 0
    t.float    :vending, default: 0
    t.integer  :proforma_id, default: 0
    t.timestamps
    end
  end

  def down
    drop_table :revenues
  end
end





