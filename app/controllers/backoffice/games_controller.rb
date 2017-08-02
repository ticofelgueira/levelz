class Backoffice::GamesController < BackofficeController
  before_action :set_game, only: [:edit, :update, :destroy]
  
  def index
    @games = Game.all
  end
  
  def new
    @game = Game.new
  end
  
  def create
    @game = GameService.create(params_game)
    
    unless @game.errors.any?
      redirect_to backoffice_games_path, notice: "O jogo #{@game.description} foi cadastrado com sucesso!"
    else
      render :new 
    end
  end
  
  def edit
  end
  
  def update
   if @game.update(params_game)
    redirect_to backoffice_games_path, notice: "O jogo #{@game.description} foi atualizado com sucesso!"
   else
    render :edit 
   end
  end 
  
def destroy
  game_name = @game.description
  
  if @game.destroy 
   redirect_to backoffice_games_path, notice: "O Jogo #{game_name} foi excluido com sucesso!"
  else
   render :index
  end
end
  
  private
  
  def set_game
    @game = Game.find(params[:id])
  end
  
  def params_game
    (params.require(:game).permit(:description))
  end
end
