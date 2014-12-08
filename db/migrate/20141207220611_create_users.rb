class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |table|
      # A column first_name of type string
      table.integer :user_id

      table.string :name

      # A column last_name of type string
      table.string :provider

      # A column phone_number of type string
      table.string :email

      table.timestamp :date_created

      table.timestamp :date_modified
    
  end
  end
end
