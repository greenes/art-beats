class User < ActiveRecord::Base
  has_many :galleries
  has_many :pieces


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
