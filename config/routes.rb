Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # 1. GET localhost3000 (homepage; make it the root of your app)
  root to: "pages#home"

  # 2. GET localhost3000/about (about page)
  get "/about", to: "pages#about"
  # root to: "pages#home"

  # 3. GET localhost3000/contact (contact page)
  get "/contact", to: "pages#contact"
  # root to: "pages#home"

end
