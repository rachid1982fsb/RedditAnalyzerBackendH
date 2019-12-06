class User < ApplicationRecord
    has_many :favorites
    has_many :user_searches, through: :favorites

    validates :username, presence: true, uniqueness: true 
end
