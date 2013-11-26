class AddTitleToTestimonials < ActiveRecord::Migration
  def self.up
    add_column :spree_testimonials, :title, :string
  end

  def self.down
    remove_column :spree_testimonials, :title
  end
end
