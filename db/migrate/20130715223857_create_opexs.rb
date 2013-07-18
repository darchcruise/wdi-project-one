class CreateOpexs < ActiveRecord::Migration
  def up
    create_table :operating_expenses do |t|
      t.float    :management_fees, default: 1200
      t.float    :administrative_fees, default: 1200
      t.float    :payroll_and_benefits, default: 1200
      t.float    :maintenance, default: 1200
      t.float    :utilities, default: 1200
      t.float    :insurance, default: 1200
      t.float    :real_estate_taxes, default: 1200
      t.float    :miscellaneous, default: 1200
      t.integer  :proforma_id
      t.timestamps
    end
  end

  def down
    drop_table :operating_expenses
  end
end