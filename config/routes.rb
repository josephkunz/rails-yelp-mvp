Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 root to: 'restaurants#index'
  resources :restaurants, except: [:edit, :update, :destroy] do
    resources :reviews, except: [:edit, :update, :destroy, :show]
  end
end
