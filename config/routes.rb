Rails.application.routes.draw do
  resources :customers, shallow: true do
    resources :customer_machines
  end

  resources :machines

  get "invoices", to: "invoices#index"
  get "logs", to: "logs#index"
  get "tasks", to: "tasks#index"
  get "customers", to: "customers#index"
  get "inspections", to: "inspections#index"
  get "header", to: "home#header"
  root "home#index"
end
