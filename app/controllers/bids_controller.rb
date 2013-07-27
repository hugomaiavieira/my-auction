class BidsController < ApplicationController
  before_action :authenticate

  def index
    @bids = Bid.all
  end
end