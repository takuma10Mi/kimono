Rails.application.routes.draw do
  root to: 'homes#home'

  resources :products do
  end
end
