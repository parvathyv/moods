class CreateUserMoods < ActiveRecord::Migration
  def change
  	create_table :user_moods do |table|
      # A column first_name of type string
      table.integer :user_id

      # A column last_name of type string
      table.string :color

      # A column phone_number of type string
      table.text :comments

      table.string :mood_type

      table.timestamp :date_created

      table.timestamp :date_modified
    
  end
  end
end
