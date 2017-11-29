Rails.application.routes.draw do
  resources :tasks, except: [:new, :edit]
  resources :lists, except: [:new, :edit]
end
