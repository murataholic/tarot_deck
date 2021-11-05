Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    resource :nices, only: [:create, :destroy]
    collection do
      get 'search', 'search_result', 'my_page'
    end
  end
end
