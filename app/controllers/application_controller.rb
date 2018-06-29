require './config/environment'
require './app/models/trial2'
class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

get '/' do
    erb :index
  end

  get '/quiz.erb' do
    erb :quiz
  end

  post '/new_recipes' do
    @finalanswer = put_recipes(params)
    
    if params == [:chinese]
      @link = @recipes[:chinese][:link]
    # allergy=params[:option].to_sym
    # r = put_recipes(allergy)
    # if allergy.to_s == "chinese"
    #   @title = r[:fried_rice][:title]
    #   @title2 = r[:pancakes][:title]
    #         @content = r[:fried_rice][:content]
    #         @content2 = r[:pancakes][:content]
    #         @link = r[:fried_rice][:link]
    #         @link2 = r[:pancakes][:link]
    #         @picture = r[:fried_rice][:picture]
    #         @picture2 = r[:pancakes][:picture]
    #         else
    #           return "nothing"
    #         end
  end
    erb :results
   end
  

# require './config/environment'
# require './app/models/model'

# class ApplicationController < Sinatra::Base
#   configure do
#   	set :views, "app/views"
#   	set :public_dir, "public"
#   end

# get "/" do      #this is your default/homepage
#   	erb :food
#   end
  
#   # post "/" do
#   #   # @quiz_fun=params[:quiz_page]
#   #   # @the_cuisine=params[:cuisine]
#   #   # @the_level=params[:level]
#   #   # return erb :quiz
#   # end
  
#   post "/" do
#     @the_cuisine=params[:cuisine].to_str
#     @the_level=params[:level].to_str
#     @result_stuff=get_result(@the_cuisine, @level).to_ary
#     return erb :results
#   end
  
#   get "/fun" do
#     erb :newpage
#   end
# end
  
  
end
