class SpreeTestimonialsHooks < Spree::ThemeSupport::HookListener

  def self.perform_deface_customizations

    Deface::Override.new(:virtual_path => "layouts/admin",
                       :name => "converted_admin_tabs_923933875",
                       :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                       :text => "<%=  tab(:testimonials)  %>",
                       :disabled => false)
  end

 # detect if we have Deface support
  begin
    Deface::const_get "Deface"
    self.perform_deface_customizations
  rescue NameError
    # we are old-school spree (0.60.* and below)
    insert_after :admin_tabs do
      %(<%=  tab(:testimonials)  %>)
    end
  end
end
