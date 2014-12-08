require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require "sinatra/activerecord"

require_relative 'models/user'
require_relative 'models/user_moods'


configure :development, :test do
  require 'pry'
end

get '/' do
  @arr = []	
  @user_name = User.name
  @arr << [@user_name]
  @user_moods = UserMoods.all
  @user_moods.map{|moodobject| @arr << [moodobject.comments]}
  binding.pry
  erb :'index'

end

post '/' do

user_mood_input = params[:happy] || params[:sad] || params[:zen] || params[:crazy]
	@user_moods = UserMoods.create(mood_type: user_mood_input,date_created: Time.now, 
		date_modified:Time.now,comments: params[:comments])	
	
  erb :'index'
  
end	

