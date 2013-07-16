class Proforma < ActiveRecord::Base
  belongs_to :users
  has_many :years

  validates_presence_of :discount_rate
end