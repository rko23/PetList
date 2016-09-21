Rails.application.routes.draw do
	resources :owners do
		resources :pets, module: :owners
	end
end
