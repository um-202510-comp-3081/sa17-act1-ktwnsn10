class BoardGamesController < ApplicationController
  def index
  end

  def show
  end
end

# app/controllers/board_games_controller.rb
class BoardGamesController < ApplicationController
  def index
    @board_games = BoardGame.all
  end

  def show
    @board_game = BoardGame.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to board_games_path, alert: "Board game not found"
  end
end