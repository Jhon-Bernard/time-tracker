Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'welcome#index'
  get 'tracker' => 'trackers#index'
  get 'overview' => 'attendance#overview'
  get 'attendance' => 'attendance#index'
  get 'users' => 'users#index'
  get 'trackers/timein' => 'trackers#timein'
  get 'trackers/new' => 'trackers#new'
  get 'userlog' => 'users#userlog'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
