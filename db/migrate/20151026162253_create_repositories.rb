class CreateRepositories < ActiveRecord::Migration
  def change
    create_table :repositories do |t|
      t.string :name
      t.text :summary
      t.string :tags
      t.text :description
      t.string :repo_type
      t.integer :created_by

      t.timestamps null: false
    end
  end
end
