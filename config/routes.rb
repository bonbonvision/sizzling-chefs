Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :users do
    devise_for :users
  end

  root "pages#index"
end
