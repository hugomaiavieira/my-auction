class SiteController < ApplicationController
  def index
    @value = Auction.actual_value_as_currency
  end
end
