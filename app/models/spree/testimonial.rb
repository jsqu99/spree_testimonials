module Spree
  class Testimonial < ActiveRecord::Base
    attr_accessible :name, :body, :email, :approved

    validates :body, :presence => true
    validates :email, :presence => true, :email => true

    default_scope :order => 'created_at DESC'
  end
end
