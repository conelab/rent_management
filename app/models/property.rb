class Property < ActiveRecord::Base
  belongs_to :company
  has_many :invoices, :dependent => :destroy
  validates_associated :company

  validates_presence_of :company, :name, :address, :city, :country, :last_increased, :increase_method
  validates_numericality_of :rent, :greater_than_or_equal_to => 0, :allow_blank => false
  validates_numericality_of :percent_rent_increase, :greater_than_or_equal_to => 0, :allow_blank => false
end
