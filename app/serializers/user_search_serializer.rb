class UserSearchSerializer < ActiveModel::Serializer
  attributes :id, :reddit_username, :top_listing_name, :top_listing_likes, :top_listing_link, :fav_sub_name, :most_children_name, :Most_children_likes, :most_children_link
end
