module Spree
  class Admin::TestimonialsController < Admin::ResourceController

    def index
      @testimonials = Testimonial.order("created_at DESC").paginate(:per_page => 30, :page => params[:page])
    end

    create.response do |format|
      format.html { redirect_to collection_url }
    end

    update.response do |format|
      format.html { redirect_to collection_url }
    end

    destroy.response do |format|
      format.js  { render_js_for_destroy }
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
