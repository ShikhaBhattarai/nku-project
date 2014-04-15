NkuProject::Application.routes.draw do
  resources :users 
  resources :sessions
  resources :recipies
  root to: "users#index"
  
   get "sign_out", to: "sessions#destroy"
   post "comments", to: "recipies#comment"
end
