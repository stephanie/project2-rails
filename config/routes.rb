Project2Rails::Application.routes.draw do

	get 'registrants' => 'registrants#index' #list all
	get 'registrants/:id' => 'registrants#show' #show one
	post 'registrants' => 'registrants#create' #create a new one
	put 'registrants/:id' => 'registrants#update' #edit a current one
	patch 'registrants/:id' => 'registrants#update' #edit a current one
	delete 'registrants/:id' => 'registrants#delete' #delete a current one



	# Session
	get "login" => "session#new"
	post "login" => "session#create"
	delete "logout" => "session#destroy"
	get "logout" => "session#destroy"

	# Registration
	get "register/:code" => "registration#new"
	post "register/:code" => "registration#create"
	
	# Password reset
	get "reset/:code" => "password#edit"
	put "reset/:code" => "password#update"
	patch "reset/:code" => "password#update"


	get "privacy" => "site#privacy"
	get "terms" => "site#terms"

	root 'site#index'

end
