Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  #devise_for :users
  devise_for :users
  resources :services, only: [:new, :create, :index, :show, :edit, :update] do
  resources :requests, only: [:new, :created]
  end

  root to: 'pages#home'
  get "/contact" => "pages#contact"
  get 'seller' => "services#seller"
  get 'sales'  => "requests#sales"
  get 'purchases' => "requests#purchases"






  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
