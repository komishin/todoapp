class BoardsController < ApplicationController
  before_action :authenticate_user!

  def new
    # @board = current_user.boards.new
  end
end
