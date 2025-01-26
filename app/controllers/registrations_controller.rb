class RegistrationsController < ApplicationController
    require 'jwt'

    def new
      raise "params: #{params.inspect}"
    end
  
    def create
      user = User.new(user_params)
      if user.save
        token = generate_token(user.id)
        cookies.signed[:jwt] = { value: token, httponly: true, expires: 1.hour.from_now }
        render json: { message: 'User created successfully' }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
  
    def generate_token(user_id)
      JWT.encode({ user_id: user_id, exp: 1.hour.from_now.to_i }, Rails.application.secrets.secret_key_base)
    end
  end