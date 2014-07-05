class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :size
      t.string :picture

      t.timestamps
    end
  end
end
