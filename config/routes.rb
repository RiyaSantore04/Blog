Rails.application.routes.draw do
  resources :teams
  resources :schools
  resources :insta
  # get 'students/index'
  # root to:  "articles#index"
  # resources :articles
  
  # constraints subdomain: "admin" do
  #  get "/articless" => "articles#index"
  # end


  resources :articles 
end
    # resources :comments
  #   resources :students
  # end

  # resources :students

# namespace routing ex-----------

  #  namespace :admin do
  #   resources :students
  # end

# using scope routing ex-----------
    # scope module: :admin do
    #   resources :students
    # end

# concern routing ex ---------------

# concern :commentable do
#   resources :comments
# end

# resources :messages, concerns: :commentable

# resources :photos do
#   collection do
#     get 'search'
#   end
# end


# resources :photos do
#   member do
#     get 'preview'
#   end
# end


# scope '/admin' do
#   resources :articles, :comments
# end

# namespace :admin do
# end

  # resources :students



# namespace :admin do
#   constraints subdomain: 'admin' do
#     resources :students
#   end
# end