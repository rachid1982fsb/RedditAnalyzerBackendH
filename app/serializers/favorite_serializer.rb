class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_search_id
end
