class CreateIdeaComponents < ActiveRecord::Migration
  def change
    create_table :idea_components do |t|
      t.text :summary
      t.text :details
      t.string :tags
      t.integer :idea_id
      t.string :idea_component_type
      t.integer :order

      t.timestamps null: false
    end
  end
end
