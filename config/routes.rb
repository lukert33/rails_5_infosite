Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Redirect all herokuapp domains
	constraints lambda { |req| req.env['HTTP_HOST'].include?("herokuapp") } do
	  match '/(*path)' => redirect { |params, req|
	    "//#{SITE_HOST}#{req.fullpath}"
	  }, via: [:get, :post]
	end

  root to: 'welcome#index'

  get '/research', to: 'welcome#research'

  get '/about-us', to: 'welcome#about_us'

  get '/services', to: 'welcome#services'

  get "/utility-flyer", to: 'welcome#utility_flyer'

  post "/contact-request", to: 'mailings#contact_request', as: 'contact_request'
end
