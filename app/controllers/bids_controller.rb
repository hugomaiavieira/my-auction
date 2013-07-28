class BidsController < ApplicationController
  before_action :authenticate

  def index
    @bids = Bid.all
  end

  def destroy
    bid = Bid.find(params[:id])
    bid.destroy
    redirect_to bids_path
  end
end