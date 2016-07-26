class CreateCodealongsLanguagesUsers < ActiveRecord::Migration
  def change
    create_table :codealongs_languages_users, :id => false do |t|
      t.integer :codealong_id, index: true
      t.integer :language_id, index: true
      t.integer :user_id, index: true
    end
  end
end
