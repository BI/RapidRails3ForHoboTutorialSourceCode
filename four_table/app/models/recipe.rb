class Recipe < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    title   :string
    body    :text
#    country :string
#    country enum_string(:American, :French, :Chinease)
    timestamps
  end

  belongs_to :country
  has_many :categories, :through => :category_assignments,  :accessible => true
  has_many :category_assignments, :dependent => :destroy

  validates_presence_of :country

  children :categories
  
  lifecycle :state_field => :lifecycle_state do

    state :not_published, :default => :true
    state :published
        
    transition :publish, { :not_published => :published }, :available_to => "acting_user if acting_user && acting_user.signed_up?"
    transition :not_publish, { :published => :not_published }, :available_to => "acting_user if acting_user && acting_user.signed_up?"
        
  end

  scope :viewable, lambda { |acting_user| 
    where("#{acting_user && acting_user.signed_up? ? 1 : 0}=1 or lifecycle_state='published'") 
  }

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
