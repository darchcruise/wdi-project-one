class CreateYears < ActiveRecord::Migration
  def up
    create_table :years do |t|
    t.integer :proforma_id
    t.integer  :year
    t.timestamps
    end
  end

  def down
    drop_table :years
  end
end
