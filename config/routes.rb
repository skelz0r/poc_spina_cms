Rails.application.routes.draw do
  root to: 'home#index'

  mount Spina::Engine => '/'
end
