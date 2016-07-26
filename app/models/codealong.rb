class Codealong < ActiveRecord::Base
  belongs_to :language
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :users, dependent: :destroy
end
