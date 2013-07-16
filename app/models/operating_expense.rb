class Operating_Expense < ActiveRecord::Base

# Relationships
  belongs_to :proformas

  # Validations


  # Attributes
  attr_accessible :management_fees, :administrative_fees, :payroll_and_benefits, :maintenance, :utilities, :real_estate_taxes, :miscellaneous, :proforma_id

  # Methods


end