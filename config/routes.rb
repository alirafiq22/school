Rails.application.routes.draw do
  resources :student_masters
  resources :marks
  devise_for :staffs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'page' => 'pages#index'
  get 'std' => 'standards#index'
end
