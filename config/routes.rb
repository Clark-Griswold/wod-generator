Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'wods#index'
resources :wods
resources :timers
get '/heroes' => 'wods#hero_workouts'
get '/ladies' => 'wods#lady_workouts'
resources :logs do
  resources :exercises
end
  
end
