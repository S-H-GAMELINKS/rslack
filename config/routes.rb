Rails.application.routes.draw do
  resources :channels do
    resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
