class Language < ActiveRecord::Base
  has_many :snippets
  has_many :users, through: :snippets
  has_many :codealongs
end
