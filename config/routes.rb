Rails.application.routes.draw do
  root to: 'pages#home'

  resources :service_sections
  resources :services, except: [:show, :edit]
  get 'service/:id', to: "services#show", as: 'service_show'
  get 'service/:id/edit', to: "services#edit", as: 'service_edit'



  resources :programs, except: [:index, :edit]
  get 'wellness-program', to: 'programs#index'
  get 'wellness-program/edit/:id', to: 'programs#edit', as: 'edit_wellness'

  resources :contacts, except: [:index, :edit]
  get 'contact', to: 'contacts#index'
  get 'contact/edit/:id', to: 'contacts#edit', as: 'edit_contact'

  resources :abouts, except: [:index, :show, :edit]
  get 'about-us', to: 'abouts#index', as: 'about_us'
  get ':id/about-me', to: 'abouts#show', as: 'about_me'
  get ':id/about-me/edit', to: 'abouts#edit', as: 'about_edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end