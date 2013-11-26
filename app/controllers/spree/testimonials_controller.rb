class Spree::TestimonialsController < Spree::StoreController

  before_filter :init_pagination, :only => [:index]
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def index
    @testimonials = Spree::Testimonial.approved.page(@pagination_page).per(@pagination_per_page)
  end

  def create
    @testimonial = Spree::Testimonial.new(params[:testimonial])

    if @testimonial.save
      flash[:notice] = Spree.t('testimonials.testimonial_successfully_submitted')
      redirect_to spree.testimonials_path
    else
      render :action => "new"
    end
  end

  private

    def init_pagination
      @pagination_page = params[:page].to_i > 0 ? params[:page].to_i : 1
      @pagination_per_page = params[:per_page].to_i > 0 ? params[:per_page].to_i : 10
    end
end