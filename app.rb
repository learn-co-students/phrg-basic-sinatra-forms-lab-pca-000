require 'sinatra/base'

class App < Sinatra::Base
  get "/newteam" do
    erb :newteam
  end

  post '/team' do
    puts params
    @team_name = params[:team_name]
    @coach_name = params[:coach_name]
    @point_guard = params[:point_guard]
    @shooting_guard = params[:shooting_guard]
    @small_forward = params[:small_forward]
    @power_forward = params[:power_forward]
    @center = params[:center]
    erb :team
  end

end
