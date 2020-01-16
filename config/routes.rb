Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'wods#index'
resources :wods
resources :timers

end
