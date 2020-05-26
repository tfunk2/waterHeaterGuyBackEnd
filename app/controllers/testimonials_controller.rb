class TestimonialsController < ApplicationController

    before_action :authenticate, only: [:index, :destroy]

    def index
        @testimonials = Testimonial.all
        render json: @testimonials
    end

    def create
        @new_testimonial = Testimonial.create(
            name: params[:name],
            message: params[:message]
        )
        render json: @new_testimonial
    end

    def destroy
        found_testimonial = Testimonial.find(params[:id])
        @deleted_testimonial = found_testimonial.destroy
        render json: @deleted_testimonial
    end
end
