class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = policy_scope(List)
  end

  def show
  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    authorize @list
    @list.save

    redirect_to list_path(@list)
  end

  def edit
    # movie list in case we want to add a new movie to a list TO BE DONE
    @movies = @list.movies
  end

  def update
    @list.update(list_params)

    redirect_to list_path(@list)
  end

  def destroy
    @list.destroy
    # everytime I destroy a list I should also destroy all bookmarks! depeddent destroy added

    redirect_to lists_path
  end

  def add_movie_to_list
    # everytime we add a new movie to a list, we need to create a bookmark!
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end

  def set_list
    @list = List.find(params[:id])
    authorize @list
  end
end
