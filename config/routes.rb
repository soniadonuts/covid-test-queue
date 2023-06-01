Rails.application.routes.draw do
  get "about", to: "about#index"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "new_test", to: "covid_tests#new"
  post "new_test", to: "covid_tests#create"

  get "users/:id/tests", to: "covid_tests#show", as: "show_tests"
  
  get "users/:id/tests/:test_id", to: "covid_tests#edit", as: "edit_test"
  patch "users/:id/tests/:test_id", to: "covid_tests#update"

  delete "logout", to: "sessions#destroy"

  root to: "home#index"
end
