Rails.application.routes.draw do
  resources :job_statuses
  get 'home/index'
  get 'home/call_job'

  root to: 'home#index'

  match 'get_post', to: 'home#get_post', via: [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
