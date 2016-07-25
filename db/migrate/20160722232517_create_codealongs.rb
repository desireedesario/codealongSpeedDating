class CreateCodealongs < ActiveRecord::Migration
  def change
    create_table :codealongs do |t|
      t.references :language, index: true, foreign_key: true
      t.string :location
      t.datetime :date
      t.string :description

      t.timestamps null: false
    end
  end
end
