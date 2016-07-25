class Codealong < ActiveRecord::Base
  belongs_to :language
  has_many :messages 
  has_and_belongs_to_many :users
end
