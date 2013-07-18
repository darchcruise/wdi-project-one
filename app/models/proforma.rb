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

  def grow_ten_year_projection
    rev_growth
    opex_growth
    # noi is something we assign

    10.times do |x|
    end
    # @total_rev_year2 = @total_revenue * (1 + @p.rev_growth)
    # @total_opex_year2 = @total_opex * (1 + @p.opex_growth)
    # @noi_year2 = @total_rev_year2 - @total_opex_year2
  end


end