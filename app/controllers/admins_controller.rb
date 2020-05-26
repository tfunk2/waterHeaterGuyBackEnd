class AdminsController < ApplicationController

    before_action :authenticate, only: [:index, :show, :create, :update, :destroy]

    def index
        @admins = Admin.all
        render json: @admins
    end

    def show
        @admin = Admin.find(params[:id])
        render json: @admin
    end

    def create
        @new_admin = Admin.create(admin_params)
        render json: @new_admin
    end
    
    def update
        found_admin = Admin.find(params[:id])
        @updated_admin = found_admin.update(admin_params)
        render json: @updated_admin
    end
    
    def destroy
        found_admin = Admin.find(params[:id])
        @deleted_admin = found_admin.destroy
        render json: @deleted_admin
    end

    private

    def admin_params
        params.require(:admin).permit(:username, :password)
    end
end
