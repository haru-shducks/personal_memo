class GenresController < ApplicationController
  before_action :set_genre, only:[:show, :edit, :update, :destroy]
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)
    @genre.user_id = current_user.id
    if @genre.save
      redirect_to @genre
    else
      render new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @genre.update(genre_params)
      redirect_to @genre
    else
      render show
    end
  end
  
  def destroy
    @genre = Genre.destroy
    redirect_to root_path
  end
  
  private
  
  def set_genre
    @genre = Genre.find(params[:id])
  end
  
  def genre_params
    params.require(:genre).permit(:name)
  end
end
