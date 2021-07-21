Rails.application.routes.draw do
  root to: 'home#index'

  get '/documentation', to: 'documentation#index'
  mount Spina::Engine => '/'
end
