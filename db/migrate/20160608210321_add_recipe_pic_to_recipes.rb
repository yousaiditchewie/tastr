class AddRecipePicToRecipes < ActiveRecord::Migration

  def self.up
    add_attachment :recipes, :recipe_pic
  end
  def self.down
    remove_attachment :recipes, :recipe_pic
  end

end
