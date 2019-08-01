Rails.application.routes.draw do
  resources :vitamin_stores 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/vitamin_stores/report/:id' => 'vitamin_stores#report',as: :report
end
