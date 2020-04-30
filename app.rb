require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    session[:player_2_points] = 60
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    if params[:attacked]
      session[:player_2_points] -= 10
    end

    @hp = session[:player_2_points]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
