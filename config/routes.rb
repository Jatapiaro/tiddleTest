Rails.application.routes.draw do

	devise_scope :user do
		post 'login.json', to: 'users/sessions#create'
		post 'update.json', to: 'users/registrations#create'
		delete 'logout.json', to: 'users/sessions#destroy'
	end

	# Devise routes for web clients (built-in sessions controller)
	devise_for :users

	root 'welcome#index'


end
