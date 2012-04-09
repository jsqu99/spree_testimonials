Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "testimonial_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:testimonials, :url => spree.admin_testimonials_path) %>",
                     :disabled => false)
