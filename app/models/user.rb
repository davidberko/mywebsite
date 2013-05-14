class User < ActiveRecord::Base
  attr_accessible :story, :title, :about
end
