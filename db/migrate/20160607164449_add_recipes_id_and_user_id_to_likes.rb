class AddRecipesIdAndUserIdToLikes < ActiveRecord::Migration
  def change
    add_column :likes, :recipe_id, :integer
    add_column :likes, :user_id, :integer
  end
end
