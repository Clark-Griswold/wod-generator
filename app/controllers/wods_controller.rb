class WodsController < ApplicationController

  def index
    @wod = Wod.order("RANDOM()").first
  end

  
end
