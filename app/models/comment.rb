class Comment < ActiveRecord::Base
  attr_accessible :content, :status_id
  belongs_to :status
end
