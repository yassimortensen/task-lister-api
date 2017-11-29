class ListsController < ApplicationController

  def index
    lists = List.all
    render json: lists
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
