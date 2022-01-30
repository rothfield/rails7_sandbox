Rails.application.routes.draw do

  resources :machines

  get 'invoices', to: 'invoices#index'
  get 'logs', to: 'logs#index'
  get 'tasks', to: 'tasks#index'
  get 'customers', to: 'customers#index'
  get 'inspections', to: 'inspections#index'
  get 'navbar', to: "home#navbar"
  root "home#index"
end
