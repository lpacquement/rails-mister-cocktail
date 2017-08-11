mount Attachinary::Engine => "/attachinary"

Rails.application.routes.draw do
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create], shallow: true do
    resources :doses, only: [:destroy, :new, :create]
  end

end
