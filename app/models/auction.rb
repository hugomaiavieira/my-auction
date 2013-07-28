class Auction
  include ActiveModel::Model

  def self.initial_value
    1300
  end

  def self.current_value
    initial_value + (Bid.count * Bid.value)
  end
end
