Rails.application.routes.draw do
  resources :programs, except: [:index, :edit]
  get 'wellness-program', to: 'programs#index'
  get 'wellness-program/:id/edit', to: 'programs#edit', as: 'edit_wellness'

  resources :contacts, except: [:index, :edit]
  get 'contact', to: 'contacts#index'
  get 'contact/:id/edit', to: 'contacts#edit', as: 'edit_contact'

  resources :abouts, except: [:index]
  get 'about-us', to: 'abouts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
