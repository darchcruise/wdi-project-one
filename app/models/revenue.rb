class Revenue < ActiveRecord::Base
  # Relationships
  belongs_to :proformas

  # Validations

  # Attributes
  attr_accessible :rent, :parking, :storage, :pet, :laundry, :vending, :proforma_id

  # Methods


end