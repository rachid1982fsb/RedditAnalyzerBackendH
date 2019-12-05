class CreateUserSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :user_searches do |t|
      t.string :reddit_username
      t.string :top_listing_name
      t.integer :top_listing_likes
      t.string :top_listing_link
      t.string :fav_sub_name
      t.string :most_children_name
      t.integer :Most_children_likes
      t.string :most_children_link

      t.timestamps
    end
  end
end
