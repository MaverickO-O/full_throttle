Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
 
  resources :bikes
  resources :newsposts
  resources :brand_bike_dbs, only: :create 
  resources :posts do
  	resources :comments
  end

  #root 'welcome#index'
root 'newsposts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
