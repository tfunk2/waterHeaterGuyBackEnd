class AuthenticationController < ApplicationController

    def login
        @admin = Admin.find_by(username: params[:username])

        if @admin

            if @admin.authenticate(params[:password])

                payload = { admin_id: @admin.id }
                secret = Rails.application.secrets.secret_key_base

                token = JWT.encode(payload, secret)

                render json: { token: token }
            else
                render json: "Username and/or password is incorrect.", status: :unauthorized
            end
        else
            render json: "Username and/or password is incorrect.", status: :unauthorized
        end 
    end

end