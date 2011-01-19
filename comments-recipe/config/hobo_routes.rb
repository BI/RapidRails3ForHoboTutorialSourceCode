# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

CommentsRecipe::Application.routes.draw do


  # Resource routes for controller "comments"
  delete 'comments/:id(.:format)' => 'comments#destroy', :as => 'destroy_comment', :constraints => { :id => %r([^/.?]+) }

  # Owner routes for controller "comments"
  post 'games/:game_id/comments(.:format)' => 'comments#create_for_game', :as => 'create_comment_for_game'
  post 'courts/:court_id/comments(.:format)' => 'comments#create_for_court', :as => 'create_comment_for_court'


  # Resource routes for controller "courts"
  get 'courts(.:format)' => 'courts#index', :as => 'courts'
  get 'courts/new(.:format)', :as => 'new_court'
  get 'courts/:id/edit(.:format)' => 'courts#edit', :as => 'edit_court'
  get 'courts/:id(.:format)' => 'courts#show', :as => 'court', :constraints => { :id => %r([^/.?]+) }
  post 'courts(.:format)' => 'courts#create', :as => 'create_court'
  put 'courts/:id(.:format)' => 'courts#update', :as => 'update_court', :constraints => { :id => %r([^/.?]+) }
  delete 'courts/:id(.:format)' => 'courts#destroy', :as => 'destroy_court', :constraints => { :id => %r([^/.?]+) }


  # Resource routes for controller "games"
  get 'games(.:format)' => 'games#index', :as => 'games'
  get 'games/new(.:format)', :as => 'new_game'
  get 'games/:id/edit(.:format)' => 'games#edit', :as => 'edit_game'
  get 'games/:id(.:format)' => 'games#show', :as => 'game', :constraints => { :id => %r([^/.?]+) }
  post 'games(.:format)' => 'games#create', :as => 'create_game'
  put 'games/:id(.:format)' => 'games#update', :as => 'update_game', :constraints => { :id => %r([^/.?]+) }
  delete 'games/:id(.:format)' => 'games#destroy', :as => 'destroy_game', :constraints => { :id => %r([^/.?]+) }


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
