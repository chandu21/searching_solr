class Comment < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :post_id
end
