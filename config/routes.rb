Rails.application.routes.draw do
  resources :notes
  resources :milestones
  resources :goals
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'home#index'
get '/dashboard' => 'home#dashboard'
post '/comment' => 'goals#comment'
patch '/milestone' => 'goals#milestone'
end
