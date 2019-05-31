class HomeController < ApplicationController
      def index
        if user_signed_in?
        @codes = SecretCode.where(:email => current_user.email)
        end
      end
end
