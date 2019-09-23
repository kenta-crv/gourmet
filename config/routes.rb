Rails.application.routes.draw do

  devise_for :admins

  get 'contact' => 'contact#index'
  post 'confirm' =>'contact#confirm'
  post 'thanks' => 'contact#thanks'

  root to: 'posts#index'

  resources :posts
end
