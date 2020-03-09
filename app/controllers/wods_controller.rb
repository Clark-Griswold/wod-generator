class WodsController < ApplicationController

  def index
    @wod = Wod.order("RANDOM()").first
  end

  def hero_workouts
     @wod = Wod.where(category: 'Heroes').order("RANDOM()").first 
     render template: "wods/heroes"
  end
  
  def lady_workouts
     @wod = Wod.where(category: 'Ladies').order("RANDOM()").first
     render template: "wods/ladies"
  end

  def weather
    render template: "wods/weather"
  end
end
