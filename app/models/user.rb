class User < ActiveRecord::Base
  has_many :snippets
  has_many :languages, through: :snippets
  has_many :messages
  has_and_belongs_to_many :codealongs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
