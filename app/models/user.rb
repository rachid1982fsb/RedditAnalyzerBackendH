class User < ApplicationRecord
    has_many :favorites
    has_many :user_searches, through: :favorites
end
