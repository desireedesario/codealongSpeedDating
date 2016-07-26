class Language < ActiveRecord::Base
  has_many :snippets, dependent: :destroy
  has_many :users, through: :snippets, dependent: :destroy
  has_many :codealongs, dependent: :destroy
end
