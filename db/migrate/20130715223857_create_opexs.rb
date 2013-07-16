class CreateOpexs < ActiveRecord::Migration
  def up
    create_table :operating_expenses do |t|
      t.float    :management_fees
      t.float    :administrative_fees
      t.float    :payroll_and_benefits
      t.float    :maintenance
      t.float    :utilities
      t.float    :insurance
      t.float    :real_estate_taxes
      t.float    :miscellaneous
      t.integer  :proforma_id
      t.timestamps
    end
  end

  def down
    drop_table :operating_expenses
  end
end