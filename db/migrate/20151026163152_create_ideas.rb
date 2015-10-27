class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.text :summary
      t.text :details
      t.string :tags
      t.integer :repository_id
      t.string :idea_type
      t.integer :order

      t.timestamps null: false
    end
  end
end
