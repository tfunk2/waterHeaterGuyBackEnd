class TestimonialsController < ApplicationController

    before_action :authenticate, only: [:destroy]

    def index
        @testimonials = Testimonial.all
        render json: @testimonials
    end

    def create
        @new_testimonial = Testimonial.create(
            name: params[:name],
            message: params[:message],
            opened_status: "unopened"
        )
        render json: @new_testimonial
    end

    def update
        find_testimonial = Testimonial.find(params[:id])
        @updated_testimonial = find_testimonial.update(
            opened_status: params[:opened_status]
        )
        render json: @updated_testimonial
    end

    def destroy
        found_testimonial = Testimonial.find(params[:id])
        @deleted_testimonial = found_testimonial.destroy
        render json: @deleted_testimonial
    end
end
