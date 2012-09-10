class User < ActiveRecord::Base
	has_and_belongs_to_many :interests

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
