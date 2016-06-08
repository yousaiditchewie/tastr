class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def recipe_params
    params.require(:recipe).permit(
      :recipe_name,
      :cooking_instruction,
      :recipe_pic,
      :description,
      :prep_time,
      :cook_time,
      :total_time
  )
  end
end
