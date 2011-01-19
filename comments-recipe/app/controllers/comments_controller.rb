class CommentsController < ApplicationController

  hobo_model_controller

  auto_actions :destroy
  
  auto_actions_for :game, :create
  auto_actions_for :court, :create

end
