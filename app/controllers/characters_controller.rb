class CharactersController < ApplicationController

  before_action :find_character, only: [:show, :edit, :destroy]
  
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)
    if @character.save
      redirect_to @character
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :height, :weight, :speed, :strength, :image_url)
  end
end
