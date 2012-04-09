module Spree
  class Admin::TestimonialsController < Admin::ResourceController

    def index
      @testimonials = Testimonial.order("created_at DESC") #.paginate(:per_page => 30, :page => params[:page])
    end

    def create
      @testimonial = Testimonial.new(params[:testimonial])

      respond_to do |format|
        if @testimonial.save
          format.html { redirect_to collection_url }
        else
          format.html { render :action => "new" }
        end
      end
    end

    def update 
      @testimonial = Testimonial.find(params[:id])
      if @testimonial.update_attributes(params[:testimonial])
        redirect_to collection_url
      else
        render :action => "edit"
      end
    end

    def destroy
      @testimonial = Testimonial.find(params[:id])
      @testimonial.destroy

      respond_to do |format|
        format.js  { render_js_for_destroy }
      end
    end

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
