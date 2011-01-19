class GamesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  #auto_actions_for :comments, [:new, :create]
end
