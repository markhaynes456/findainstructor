class User < ActiveRecord::Base
  require('securerandom')

  has_secure_password  
  validates :first_name, presence:true 
  validates :last_name, presence:true
  validates :email, presence:true #uniqueness:true
  validates :password, presence:true, on: :create

  def password_reset
    self.password = SecureRandom.hex(4)   
    self.save 
  end

end
