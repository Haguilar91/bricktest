class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  devise :database_authenticatable, :registerable, :confirmable,
  #  :recoverable, :rememberable, :validatable, :trackable
    
    #acts_as_token_authenticatable

    has_many :user_permissions, :dependent => :destroy
    has_many :permissions, through: :user_permissions
end # model User
