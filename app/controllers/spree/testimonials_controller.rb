module Spree
  class TestimonialsController < Spree::BaseController

    respond_to :html

    def create
      @testimonial = Testimonial.new(params[:testimonial])

      if @testimonial.save
        respond_with(@testimonial) do |format|
          format.html { redirect_to :root, :notice => "Thank you!.  This testimonial will be displayed shortly on our testimonials page"}
        end
      else
        respond_with(@testimonial) do |format|
          format.html { render :action => "new" }
        end
      end
    end

    def index
      @testimonials = Testimonial.order("created_at DESC")
      # paginate(:per_page => 30, :page => params[:page])
    end

  end
end
