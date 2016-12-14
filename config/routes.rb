Rails.application.routes.draw do
  resources :categories, only: [:show]
  resources :pages, only: [:show]

  namespace :admin do
    resources :pages # /admin/pages
    resources :categories
    resources :types, except: [:show]
    resources :menus, except: [:show]
  end

  Page.where.not("slug", nil).all.each do |page|
    get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  end

  mount Ckeditor::Engine => '/ckeditor'

  root 'admin/pages#index'
end