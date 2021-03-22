class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(:id)
  end

  def new
  end

  def create
  end

  def delete
  end

end
