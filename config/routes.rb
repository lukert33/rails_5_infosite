Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#index'

  get '/research', to: 'welcome#research'

  get '/about-us', to: 'welcome#about_us'

  get '/services', to: 'welcome#services'
end
