class WodsController < ApplicationController

  def index
    @wod = Wod.order("RANDOM()").first
  end

  def hero_workouts
     @wod = Wod.where(category: 'Heroes').order("RANDOM()").first    
  end
  
  def lady_workouts
     @wod = Wod.where(category: 'Ladies').order("RANDOM()").first
  end
end
