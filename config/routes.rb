Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "fir#first"
  # get "/sec", to: "sec#first"
  get "/sec/:id", to: "fir#showdb"
  get "/third", to: "fir#new"
  post "/third", to: "fir#create"
  get "/login", to: "fir#check"
end
