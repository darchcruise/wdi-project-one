class CreateRevenues < ActiveRecord::Migration
  def up
    create_table :revenues do |t|
    t.float    :income
    t.string   :typ
    t.integer  :year_id
    t.timestamps
    end
  end

  def down
    drop_table :revenues
  end
end




