class CreateRecipes < ActiveRecord::Migration
  def change
   # Create the contacts table with the following
    create_table :recipes do |table|
      # A column first_name of type string
      table.string :name

      # A column last_name of type string
      table.string :description

      # A column phone_number of type string
      table.string :instructions
    end

  end
end
