Rails.application.routes.draw do

	devise_scope :user do
	  post 'login.json', to: 'users/sessions#create'
	  delete 'logout', to: 'users/sessions#destroy'
	end

	# Devise routes for web clients (built-in sessions controller)
	devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
