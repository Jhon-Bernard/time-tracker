Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'welcome#index'
  get 'tracker' => 'trackers#index'
  get 'overview' => 'attendance#overview'
  get 'attendance' => 'attendance#index'
  get 'users' => 'users#index'
  post 'trackers/timein' => 'trackers#timein'
  post 'trackers/new' => 'trackers#new'
  get 'trackers/userlog' => 'users#userlog'
  get 'trackers/timeout' => 'trackers#timeout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
