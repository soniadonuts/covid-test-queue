Rails.application.routes.draw do
  get "about", to: "about#index"

  root to: "home#index"
end
