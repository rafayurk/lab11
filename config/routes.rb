Rails.application.routes.draw do

    resources :children
    resources :tasks
    resources :chores

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
