class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  has_many :comments
end
