class Invoice < ActiveRecord::Base
  belongs_to :tennant
  belongs_to :property
  validates_presence_of :tennant, :property, :status
  validates_associated :tennant, :property

  validates_numericality_of :price, :greater_than_or_equal_to => 0, :allow_blank => false
  validates_numericality_of :amount_paid, :greater_than_or_equal_to => 0, :allow_blank => true

  def self.STATUS_NOT_PAID
    0
  end
  def self.STATUS_PAID
    1
  end
  def self.STATUS_PARTIAL_PAID
    2
  end
end
