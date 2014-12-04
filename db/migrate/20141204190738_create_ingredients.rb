class CreateIngredients < ActiveRecord::Migration
  def change
  	create_table :ingredients do |table|
      # A column first_name of type string
      table.string :name

      # A column last_name of type string
      table.integer :recipe_id

    
    end
  end
end
