Rails.application.routes.draw do
  root 'budgets#index'

  resources :budgets do
    resources :works
  end

  get 'budgets/toprint/:id', to: 'budgets#toprint'
end
