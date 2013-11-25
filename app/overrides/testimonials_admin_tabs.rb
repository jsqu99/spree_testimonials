Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "testimonial_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:testimonials, :icon => 'icon-book') %>",
                     :disabled => false)