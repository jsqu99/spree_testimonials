module Spree
  class Admin::TestimonialsController < Admin::ResourceController

    def approve
      @testimonial= Testimonial.find(params[:id])
      @testimonial.approved=true
      @testimonial.save!
      redirect_to admin_testimonials_path
    end

    def deny
      @testimonial= Testimonial.find(params[:id])
      @testimonial.approved=false
      @testimonial.save!
      redirect_to admin_testimonials_path
    end

  end
end
