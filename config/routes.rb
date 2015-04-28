Rails.application.routes.draw do
  resources :users
  resource  :sms, only: [:create, :show]

  resource  :session, only: [:new, :create, :destroy]
  root      "welcome#index"
end
