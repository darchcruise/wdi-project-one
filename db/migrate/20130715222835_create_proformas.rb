class CreateProformas < ActiveRecord::Migration
  def up
    create_table :proformas do |t|
    t.integer :users_id
    t.timestamps
    end
  end

  def down
    drop_table :proformas
  end
end
