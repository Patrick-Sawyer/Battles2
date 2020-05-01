require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    @player_1 = $player_1
    @player_2 = $player_2
    $game = Game.new(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.attack if params[:attacked]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
