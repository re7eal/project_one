class User < ActiveRecord::Base
  attr_accessible :birthday, :education, :hobbies, :lastname, :name, :relationship
  has_many :statuses
end
