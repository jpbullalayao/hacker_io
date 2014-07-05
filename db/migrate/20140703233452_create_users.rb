class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :picture
      t.string :bio
      t.string :github
      t.string :linkedin
      t.string :website
      t.boolean :is_developer
      t.boolean :is_designer
      t.boolean :is_entrepreneur

      t.timestamps
    end
  end
end
