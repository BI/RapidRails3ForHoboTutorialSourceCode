# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

OneTable::Application.routes.draw do


  # Resource routes for controller "categories"
  get 'categories(.:format)' => 'categories#index', :as => 'categories'
  get 'categories/new(.:format)', :as => 'new_category'
  get 'categories/:id/edit(.:format)' => 'categories#edit', :as => 'edit_category'
  get 'categories/:id(.:format)' => 'categories#show', :as => 'category', :constraints => { :id => %r([^/.?]+) }
  post 'categories(.:format)' => 'categories#create', :as => 'create_category'
  put 'categories/:id(.:format)' => 'categories#update', :as => 'update_category', :constraints => { :id => %r([^/.?]+) }
  delete 'categories/:id(.:format)' => 'categories#destroy', :as => 'destroy_category', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "countries"
  get 'countries(.:format)' => 'countries#index', :as => 'countries'
  get 'countries/new(.:format)', :as => 'new_country'
  get 'countries/:id/edit(.:format)' => 'countries#edit', :as => 'edit_country'
  get 'countries/:id(.:format)' => 'countries#show', :as => 'country', :constraints => { :id => %r([^/.?]+) }
  post 'countries(.:format)' => 'countries#create', :as => 'create_country'
  put 'countries/:id(.:format)' => 'countries#update', :as => 'update_country', :constraints => { :id => %r([^/.?]+) }
  delete 'countries/:id(.:format)' => 'countries#destroy', :as => 'destroy_country', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "recipes"
  put 'recipes/:id/publish(.:format)' => 'recipes#do_publish', :as => 'do_recipe_publish'
  get 'recipes/:id/publish(.:format)' => 'recipes#publish', :as => 'recipe_publish'
  put 'recipes/:id/not_publish(.:format)' => 'recipes#do_not_publish', :as => 'do_recipe_not_publish'
  get 'recipes/:id/not_publish(.:format)' => 'recipes#not_publish', :as => 'recipe_not_publish'

  # Resource routes for controller "recipes"
  get 'recipes(.:format)' => 'recipes#index', :as => 'recipes'
  get 'recipes/new(.:format)', :as => 'new_recipe'
  get 'recipes/:id/edit(.:format)' => 'recipes#edit', :as => 'edit_recipe'
  get 'recipes/:id(.:format)' => 'recipes#show', :as => 'recipe', :constraints => { :id => %r([^/.?]+) }
  post 'recipes(.:format)' => 'recipes#create', :as => 'create_recipe'
  put 'recipes/:id(.:format)' => 'recipes#update', :as => 'update_recipe', :constraints => { :id => %r([^/.?]+) }
  delete 'recipes/:id(.:format)' => 'recipes#destroy', :as => 'destroy_recipe', :constraints => { :id => %r([^/.?]+) }


  # Lifecycle routes for controller "users"
  post 'users/signup(.:format)' => 'users#do_signup', :as => 'do_user_signup'
  get 'users/signup(.:format)' => 'users#signup', :as => 'user_signup'
  put 'users/:id/reset_password(.:format)' => 'users#do_reset_password', :as => 'do_user_reset_password'
  get 'users/:id/reset_password(.:format)' => 'users#reset_password', :as => 'user_reset_password'

  # Resource routes for controller "users"
  get 'users/:id/edit(.:format)' => 'users#edit', :as => 'edit_user'
  get 'users/:id(.:format)' => 'users#show', :as => 'user', :constraints => { :id => %r([^/.?]+) }
  post 'users(.:format)' => 'users#create', :as => 'create_user'
  put 'users/:id(.:format)' => 'users#update', :as => 'update_user', :constraints => { :id => %r([^/.?]+) }
  delete 'users/:id(.:format)' => 'users#destroy', :as => 'destroy_user', :constraints => { :id => %r([^/.?]+) }

  # Show action routes for controller "users"
  get 'users/:id/account(.:format)' => 'users#account', :as => 'user_account'

  # User routes for controller "users"
  match 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  match 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'

end
