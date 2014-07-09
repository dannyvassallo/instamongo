belongs_to :tag
def self.save_post(tag_id, text, image_url, screen_name)
post = Post.new
post.tag_id = tag_id
post.description = text
post.profile_image_url = image_url
post.user_name = screen_name
post.save
end

class Post
  include Mongoid::Document
  field :description, type: String
  field :profile_image_url, type: String
  field :user_name, type: String
  field :tag_id, type: Symbol
end
