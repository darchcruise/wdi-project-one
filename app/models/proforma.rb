class Proforma < ActiveRecord::Base
  belongs_to :users
  has_many :revenues
  has_many :operating_expenses

  validates_presence_of :discount_rate
end