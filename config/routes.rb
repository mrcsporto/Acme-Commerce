Rails.application.routes.draw do
  get 'bestsellers/index'
  get 'bestsellers/show'
  resources :orders do 
    collection { post :import}
  end
  root 'welcome#index'
  get 'welcome/index'
  resources :bestsellers
end
