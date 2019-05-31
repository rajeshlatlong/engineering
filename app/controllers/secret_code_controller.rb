require 'securerandom'
class SecretCodeController < ApplicationController
    
    def create
       @codes = SecretCode.where(:email => current_user.email)
       numb = params[:create][:desired_attribute].to_i
       numb.times do
          random_string = SecureRandom.hex
          SecretCode.create(email: current_user.email,secretcode: random_string)          
       end
      
    end


end
