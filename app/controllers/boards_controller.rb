class BoardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @boards = current_user.boards.all
  end

  def new
    @board = current_user.boards.new
  end

  def show
    @board = current_user.boards.find(params[:id])
  end
end
