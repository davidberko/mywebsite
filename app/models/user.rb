class User < ActiveRecord::Base
  attr_accessible :story, :title, :about
  has_many :commenters

end
