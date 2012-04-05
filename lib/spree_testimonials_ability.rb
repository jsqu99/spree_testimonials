class SpreeTestimonialsAbility
  include CanCan::Ability

  def initialize(user)
    can :read, Spree::Testimonial
    can :index, Spree::Testimonial
    can :create, Spree::Testimonial
  end
end
