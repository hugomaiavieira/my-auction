class Auction
  include ActiveModel::Model

  def self.product_name
    'Notebook Dell Inspiron 15R'
  end

  def self.initial_value
    1300
  end

  def self.current_value
    initial_value + (Bid.count * Bid.value)
  end
end
