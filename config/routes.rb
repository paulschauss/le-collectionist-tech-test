Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  scope '(:locale)', locale: /fr|en/ do
    root 'shops#index'
    resources :shops, only: [:index, :show, :new, :create] do
      resources :slots, only: [:new, :create]
    end
  end
end
