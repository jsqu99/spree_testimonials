class NamespaceTestimonials < ActiveRecord::Migration
  def self.up
    rename_table :testimonials, :spree_testimonials
  end

  def self.down
    rename_table :spree_testimonials, :testimonials
  end
end
