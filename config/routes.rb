Rails.application.routes.draw do


  get 'users/index'

  get 'users/show'

  get 'tickets/index'

  get 'tickets/show'

  devise_for :users

  get 'home' => 'general_pages#home'

  get 'help' => 'general_pages#help'

  get 'about' => 'general_pages#about'

  resources :reminders do
  resources :reminder_items do
      member do 
        patch :complete
      end
    end
  end



  resources :users
  resources :tickets
  resources :yelps
  root 'general_pages#home'  
end