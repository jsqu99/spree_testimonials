require 'spree/core/validators/email'

module Spree
  class Testimonial < ActiveRecord::Base
    attr_accessible :name, :body, :email, :approved

    validates :name,  presence: true
    validates :body,  presence: true
    validates :email, presence: true
    validates :email, email: true

    default_scope :order => 'created_at DESC'
    scope :approved, where(:approved => true)
  end
end