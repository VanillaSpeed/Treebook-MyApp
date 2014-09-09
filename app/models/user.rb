class User < ActiveRecord::Base 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :profile_name

  has_many :statuses

  def full_name
  	if first_name && last_name
  	first_name + " " + last_name

  	else
  	
  	end
  end
end
