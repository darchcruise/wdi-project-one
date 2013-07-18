class Revenue < ActiveRecord::Base
  # Relationships
  belongs_to :proforma

  # Validations

  # Attributes
  attr_accessible :rent, :parking, :storage, :pet, :laundry, :vending, :proforma_id

  # Methods
  def total_revenue
    rent + parking + storage + pet + laundry + vending
  end

end