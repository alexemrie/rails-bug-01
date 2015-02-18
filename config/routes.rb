Rails.application.routes.draw do
  root "quotes#index"

  get "signin" => "sessions#new", as: :signin
  post "signin" => "sessions#create"
  get "signout" => "sessions#destroy", as: :signout

  get '/sign-up' => 'registrations#new', as: :signup
  post '/sign-up' => 'registrations#create'

end
