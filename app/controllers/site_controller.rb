class SiteController < ApplicationController
  def index
    value =  (8000 + (Bid.count * 200)).to_s
    puts value
    @value = "#{value[0..-4]}.#{value[-3..-1]},00"
  end
end
