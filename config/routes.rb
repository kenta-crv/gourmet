Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :admins

  get 'contact' => 'contact#index'
  post 'confirm' =>'contact#confirm'
  post 'thanks' => 'contact#thanks'

  resources :posts
end
