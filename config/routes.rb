NkuProject::Application.routes.draw do
  resources :users 
  resources :sessions 
  root to: "users#index"
  
   get "sign_out", to: "sessions#destroy"
  
end
