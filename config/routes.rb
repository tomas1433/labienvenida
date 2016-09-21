Rails.application.routes.draw do
  resources :requests
  root to: 'pages#home'
  get "/contact" => "pages#contact"
  
  resources :services, only: [:new, :create, :index, :show, :edit, :update]






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
