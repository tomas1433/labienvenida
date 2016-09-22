Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  devise_for :users
  resources :requests
  root to: 'pages#home'
  get "/contact" => "pages#contact"
  get 'seller' => "services#seller"
  resources :services, only: [:new, :create, :index, :show, :edit, :update]






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
