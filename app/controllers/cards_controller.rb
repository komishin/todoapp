class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
  @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to cards_path(@card), notice: '保存できたよ'
    else
      flash.now[:error] = '保存に失敗しました'
      flash.now[:alert] = @card.errors.full_messages.join(', ')
      render :new, status: :unprocessable_entity
    end
  end

  private
  def card_params
    params.require(:card).permit(:name, :description, :deadline, :eyecatch)
  end
end
