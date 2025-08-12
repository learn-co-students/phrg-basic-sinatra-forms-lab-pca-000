require 'sinatra/base'
require 'sinatra/reloader' if ENV['RACK_ENV'] != 'production'

class App < Sinatra::Base
  configure :development, :test do
    register Sinatra::Reloader if defined?(Sinatra::Reloader)
    also_reload '**/*.rb'
  end

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    # params expected by the spec:
    @team_name     = params[:name]
    @coach_name    = params[:coach]
    @point_guard   = params[:pg]
    @shooting_guard = params[:sg]
    @small_forward = params[:sf]
    @power_forward = params[:pf]
    @center        = params[:c]
    erb :team
  end
end
