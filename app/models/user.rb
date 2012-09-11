class User < ActiveRecord::Base
	has_and_belongs_to_many :interests
	has_many :received_comments, foreign_key: 'receiver_id', class_name: 'Comment'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
