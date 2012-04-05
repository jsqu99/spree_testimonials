class Testimonial < ActiveRecord::Base

  validates :body, :presence => true
  validates :email, :presence => true, :email => true

  default_scope :order => 'created_at DESC'
end
