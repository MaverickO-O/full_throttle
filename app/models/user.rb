class User < ApplicationRecord
	enum role: [:user, :news_admin, :forum_admin_light, :forum_admin_plus, :full_admin]
  	after_initialize :set_default_role, :if => :new_record?

  	def set_default_role
    	self.role ||= :user
  	end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :newsposts
  has_many :posts
  has_many :comments
  mount_uploader :avatar, ImageUploader
end
