class ContactMessagesController < ApplicationController

    before_action :authenticate, only: [:index, :show, :destroy]

    def index
        @contact_messages = ContactMessage.all
        render json: @contact_messages
    end

    def show
        @contact_message = ContactMessage.find(params[:id])
        render json: @contact_message
    end

    def create
        @new_contact_message = ContactMessage.create(
            full_name: params[:full_name],
            email: params[:email],
            phone_number: params[:phone_number],
            address: params[:address],
            message: params[:message]
        )
        render json: @new_contact_message
    end

    def destroy
        found_contact_message = ContactMessage.find(params[:id])
        @deleted_contact_message = found_contact_message.destroy
        render json: @deleted_contact_message
    end
end
