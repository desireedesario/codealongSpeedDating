class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.references :user, index: true, foreign_key: true
      t.references :language, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
