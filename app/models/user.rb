class User < ActiveRecord::Base
  has_many :loans
  has_secure_password

  validates :user_name, presence: true

end
