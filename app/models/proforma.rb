class Proforma < ActiveRecord::Base
  # Relationships
  belongs_to :users
  has_many :revenues
  has_many :operating_expenses

  # Validations
  # validates_presence_of :rev_growth
  # validates_presence_of :discount_rate

  # Attributes
  attr_accessible :users_id, :name, :address, :state, :sqft, :units, :purchase_price, :sale_price, :rev_growth, :opex_growth, :vacancy, :discount_rate


  # Methods



end