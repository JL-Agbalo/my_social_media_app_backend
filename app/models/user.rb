class User < ApplicationRecord
  has_secure_password

  def generate_jwt
    JWT.encode({ id: id, exp: 60.days.from_now.to_i }, Rails.application.credentials.secret_key_base)
  end
end