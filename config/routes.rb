Rails.application.routes.draw do
  resources :lists, only: [:create, :destroy] do
    resources :tasks, except: [:new, :edit, :show]
  end

  root "test_1#index"
  get '/test_1/', to: 'welcome#index'
end