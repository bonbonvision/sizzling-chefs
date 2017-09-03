Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :sessions => 'sessions' }, :skip => :registrations
  devise_for :chefs, :customers, :skip => :sessions

  root "pages#index"
end
