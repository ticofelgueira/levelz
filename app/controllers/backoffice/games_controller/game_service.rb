class Backoffice::GamesController::GameService
  attr_accessor :game
  
  def self.create(params_game)
    @game = Game.new(params_game)
    
    if @game.valid?
      @game.save!
    end
  
    @game
  end
end