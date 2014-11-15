module ApplicationHelper

  def number_to_currency(amount)
    "#{CURRENCY} #{amount}"
  end
end
