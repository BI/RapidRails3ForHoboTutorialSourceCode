class Comment < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    body :html, :required, :primary_content => true
    timestamps
  end

  belongs_to :user, :creator => true
  belongs_to :game, :accessible => true
  belongs_to :court, :accessible => true
  
  never_show :game, :court
  
  # --- Permissions --- #

  def create_permitted?
    acting_user.signed_up?  && user == acting_user
  end

  def update_permitted?
    acting_user.administrator? || (acting_user == user && !user_changed?)
  end

  def destroy_permitted?
    acting_user.administrator? || acting_user == user
  end

  def view_permitted?(field)
    true
  end

end
