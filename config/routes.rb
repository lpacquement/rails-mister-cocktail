Rails.application.routes.draw do
  get 'ingredients/new'

  get 'ingredients/create'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  root to: 'cocktails#index'
end
