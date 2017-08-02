class Site::HomeController < ApplicationController
    layout "site"

  
  def index
      @games = Game.all
  end
end
