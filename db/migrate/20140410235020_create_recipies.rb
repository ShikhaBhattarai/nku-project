class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.text :smallImageUrls
      t.text :imageUrlsBySize
      t.text :attributes
      t.integer :totalTimeInSeconds
      t.integer :rating
      t.string :recipeName
      t.string :sourceDisplayName
      t.string :recipe_id
      t.text :flavors
      t.text :ingredients

      t.timestamps
    end
  end
end
