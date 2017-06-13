Rails.application.routes.draw do
  devise_for :users
  get 'login/index'
  get "newsletter/index", :as => "newsletter"
  get "newsletter/new", :as => "new_newsletter"
  post "newsletter/create", :as => "newsletter_create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "subscription/new", :as => "new_subscribe"
  post "subscription/create", :as => "subscribe_create"

  get "newsletter/index", :as => "newsletter"
  post "newsletter/sendNewsletter", :as => "newsletter_send"

  root to: "index#index"
end
