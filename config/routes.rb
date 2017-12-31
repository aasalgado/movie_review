Rails.application.routes.draw do

  devise_for :users

  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index] # reviews is now nest in movies
  end

  root 'movies#index'
  
end
