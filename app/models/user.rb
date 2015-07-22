class User < ActiveRecord::Base
  before_save :set_auth_token
  before_update :authenticate_user_from_token!
  before_destroy :authenticate_user_from_token!
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :songs

  private

  def set_auth_token
    if self.authentication_token.blank?
       self.authentication_token = generate_authentication_token
    end
  end

  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

end
