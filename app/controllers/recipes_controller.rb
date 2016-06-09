class RecipesController < ApplicationController
  before_action :authorize, except: [:index, :show]

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
    @recipe.user = current_user
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id]).destroy
    redirect_to user_recipes_path(current_user)
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
