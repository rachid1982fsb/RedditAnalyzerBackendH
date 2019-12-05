class UserSearch < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
end
# us=UserSearch.new(reddit_username: "selps")