class Commenter < ActiveRecord::Base
  attr_accessible :comment, :name, :user_id
  belongs_to :user

end
