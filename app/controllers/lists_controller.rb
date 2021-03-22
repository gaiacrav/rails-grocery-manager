class ListsController < ApplicationController

  def index
    @lists = List.all
    @ingredients = Ingredient.all
  end

  def show
    @list = List.find(:id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    if @list.save!
      redirect_to lists_path
    else
      render :new
    end
  end

  def delete
  end

  private

  def list_params
    params.require(:list).permit(:name, :ingredient, :completed)
  end

end
