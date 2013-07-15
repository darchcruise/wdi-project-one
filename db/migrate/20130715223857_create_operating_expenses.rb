class CreateOperatingExpenses < ActiveRecord::Migration
  def up
    create_table :operating_expenses do |t|
      t.float    :cost
      t.string   :typ
      t.integer  :year_id
      t.timestamps
      end
  end

    def down
      drop_table :operating_expenses
    end
end