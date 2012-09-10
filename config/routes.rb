Goals::Application.routes.draw do
  root :to => 'profiles#index'
  resources :profiles

  devise_for :users
  devise_scope :user do
	  get '/sign-in' => 'devise/sessions#new', as: 'signin'
	  delete '/sign-out' => 'devise/sessions#destroy', as: 'signout'
	  get '/sign-up' => 'devise/registrations#new', as: 'signup'
	end
end
