class Bid < ActiveRecord::Base
  belongs_to :user

  # the value of each auction bid
  def self.value
    50
  end
end
