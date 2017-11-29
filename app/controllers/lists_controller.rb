class ListsController < ApplicationController

  before_action :set_list, only: [:show, :update, :destroy]

  def index
    render json: List.all
  end

  def create
    list = List.new(list_params)
    if list.save
      render json: list
    else
      render json: {errors: list.errors}
    end
  end

  def show
    render json: @list
  end

  def update
    @list.update(list_params)
  end

  def destroy
    @list.destroy
  end

  private

    def list_params
      params.permit(:title)
    end

    def set_list
      @list = List.find(params[:id])
    end

end
