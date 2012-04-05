module Spree
  class TestimonialsController < Spree::BaseController
    resource_controller

    def index
      @testimonials = Testimonial.order("created_at DESC").paginate(:per_page => 30, :page => params[:page])
    end

    create.response do |format|
      format.html { redirect_to :root, :notice => "Thank you!.  This testimonial will be displayed shortly on our testimonials page"}
    end
  end
end
