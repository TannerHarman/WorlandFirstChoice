Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'wpt-admin', sign_out: 'logout', sign_up: 'register' }
  root to: 'pages#home'

  resources :service_sections, except: [:index, :show] do
    put :sort, on: :collection
  end 
  get 'services', to: "service_sections#index", as: 'services_index'
  get 'services/:id', to: "service_sections#show", as: 'services_show'

  resources :services, except: [:index, :show, :edit, :new]
  get 'all-services', to: "services#index", as: 'service_index'
  get 'service/:id', to: "services#show", as: 'service_show'
  get 'service/:id/edit', to: "services#edit", as: 'service_edit'
  get 'add-service', to: "services#new", as: 'service_new'

  resources :programs, except: [:index, :edit]
  get 'wellness-program', to: 'programs#index', as: 'wellness_index'
  get 'wellness-program/edit/:id', to: 'programs#edit', as: 'edit_wellness'

  resources :contacts, except: [:index, :edit]
  get 'contact', to: 'contacts#index', as: 'contact_index'
  get 'contact/edit/:id', to: 'contacts#edit', as: 'edit_contact'

  resources :abouts, except: [:index, :show, :edit] do
    put :sort, on: :collection
  end
    get 'about-us', to: 'abouts#index', as: 'about_us'
    get ':id/about-me', to: 'abouts#show', as: 'about_me'
    get ':id/about-me/edit', to: 'abouts#edit', as: 'about_edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end