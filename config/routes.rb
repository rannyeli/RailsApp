Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'portfolios/react', to: 'portfolios#react'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs, except: [:show] do 
    member do 
      get :toggle_status
    end
  end


  get 'blog/:id', to: 'blogs#show', as: 'blog_show'
  
  root to: 'pages#home'
end
