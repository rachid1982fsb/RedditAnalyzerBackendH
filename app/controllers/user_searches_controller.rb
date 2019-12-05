class UserSearchesController < ApplicationController

    
    def index
        user_searches = UserSearch.all
        render :json => user_searches
    end

    def create
        puts "hello I'm here"
        user_search = UserSearch.new(user_search_params)
        if user_search.save
            puts "hello I'm here NOW"
            username = User.find_by(username: params[:username])
            favorite = Favorite.new(user_id: username.id, user_search_id: user_search.id)
            favorite.save

        end
    end 


private

    def  user_search_params

        params.require(:user_search).permit(:reddit_username, :top_listing_name, :top_listing_likes, :top_listing_link, :fav_sub_name, :most_children_name, :Most_children_likes, :most_children_link)

    end
end

