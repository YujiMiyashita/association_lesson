class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blogs, dependent: :destroy
  has_one :my_number, dependent: :destroy
end
