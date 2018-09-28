Rails.application.routes.draw do
  resources :datatables
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post :webhook, to: 'webhook#post'
end
