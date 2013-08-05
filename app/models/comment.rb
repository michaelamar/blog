class Comment < ActiveRecord::Base
  attr_accessible :blog_post_id, :body, :user_id
  belongs_to :user
  belongs_to :blog_post
end
