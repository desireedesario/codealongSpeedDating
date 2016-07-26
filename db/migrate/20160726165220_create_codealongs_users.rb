class CreateCodealongsUsers < ActiveRecord::Migration
  def change
    create_table :codealongs_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :codealong, index: true, foreign_key: true
    end
  end
end
