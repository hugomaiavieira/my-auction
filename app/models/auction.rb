class Auction
  include ActiveModel::Model

  def self.initial_value
    1200
  end

  def self.actual_value
    initial_value + (Bid.count * Bid.value)
  end

  def self.actual_value_as_currency
    value = actual_value.to_s
    "#{value[0..-4]}.#{value[-3..-1]},00"
  end
end
