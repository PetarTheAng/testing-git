Rails.application.routes.draw do

  devise_for :user 

  resources :users, only: [:index, :show]do 
    
  end

  root 'users#index'
end