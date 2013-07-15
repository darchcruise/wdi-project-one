class Proforma < ActiveRecord::Base
  belongs_to :users
  has_many :years

end