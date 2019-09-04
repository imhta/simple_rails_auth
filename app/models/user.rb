class User < ApplicationRecord
  before_create :create_remember_token
  before_save {self.email = email.downcase}
  has_many :posts
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}

 
  def create_remember_token
    self.remember_token = encrypt_to_hexdigest User.generate_new_token.to_s
  end 

  def self.generate_new_token 
    SecureRandom.urlsafe_base64
  end


  private 
    def encrypt_to_hexdigest token
      Digest::SHA1.hexdigest token
    end
end
