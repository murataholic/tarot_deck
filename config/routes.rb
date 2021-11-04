Rails.application.routes.draw do
  get 'nices/create'
  get 'nices/destroy'
  devise_for :users
  root to: 'articles#index'
  resources :articles do
    collection do
      get 'search', 'search_result', 'my_page'
    end
    resource :nices, only: [:create, :destroy]
  end
end
