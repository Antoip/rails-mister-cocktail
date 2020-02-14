Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[create]
    resources :reviews, only: %i[create]
  end
  resources :doses, only: :destroy

  root to: 'cocktails#index'
end
# Test
