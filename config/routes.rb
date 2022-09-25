Rails.application.routes.draw do
  resources :orders do 
    collection { post :import}
  end
  root 'welcome#index'
  get 'welcome/index'
end
