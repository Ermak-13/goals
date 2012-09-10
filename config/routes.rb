Goals::Application.routes.draw do
  root :to => 'first#index'
  devise_for :users

  devise_scope :user do
	  get '/sign-in' => 'devise/sessions#new', as: 'signin'
	  delete '/sign-out' => 'devise/sessions#destroy', as: 'signout'
	  get '/sign-up' => 'devise/registrations#new', as: 'signup'
	end
end
