class Message < ActiveRecord::Base
  belongs_to :codealong
  belongs_to :user
end
