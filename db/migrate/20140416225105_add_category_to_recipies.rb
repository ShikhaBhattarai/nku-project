class AddCategoryToRecipies < ActiveRecord::Migration
  def change
    add_column :recipies, :category, :string
  end
end
