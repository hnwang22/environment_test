Rails.application.routes.draw do
  resources :books
  root 'books#index'

  #resourceful route - add delete
  resources :books do
    member do
      get :delete
    end
  end
  
  #get 'books/index' #simple match route
  #get 'books/show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
