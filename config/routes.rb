Rails.application.routes.draw do

  devise_for :users

  # reviews is now nest in movies
  resources :movies do
    resources :reviews, except: [:show, :index]
  end

  root 'movies#index'
  
end
