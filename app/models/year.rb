class Year < ActiveRecord::Base
  belongs_to :proformas
  has_many :revenues
  has_many :operating_expenses
end