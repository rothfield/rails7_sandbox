Rails.application.routes.draw do
  get 'invoices/index'
  get 'logs/index'
  get 'tasks/index'
  get 'machines/index'
  get 'customers/index'
  get 'inspections/index'
  get 'home/index'

  root "home#index"
end
