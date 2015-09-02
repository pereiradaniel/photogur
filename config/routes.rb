Rails.application.routes.draw do
  root 'pictures#index'
  
  resources :pictures do
    resources :comments # comments as a nested resource of pictures
  end

end
