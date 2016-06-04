class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.string :photo_url
      t.text :description
      t.text :cooking_instruction
      t.string :prep_time
      t.string :cook_time
      t.string :total_time

      t.timestamps null: false
    end
  end
end
