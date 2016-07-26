class User < ActiveRecord::Base
  has_many :snippets, dependent: :destroy
  has_many :languages, through: :snippets, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_and_belongs_to_many :codealongs, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
