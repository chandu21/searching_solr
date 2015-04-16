class User < ActiveRecord::Base
  attr_accessible :age, :city, :name ,:body
  has_many :comments
  searchable do
  	text :name
  	text :age
  	text :city
  	text :body
  	text :comments do
      comments.map { |comment| comment.body }
    end
  end
end
