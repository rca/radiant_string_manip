# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class StringManipExtension < Radiant::Extension
  version "0.1"
  description "String manipulation tags"
  url "http://github.com/rca/radiant_string_manip"

  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :string_manip
  #   end
  # end

  def activate
    # admin.tabs.add "String Manip", "/admin/string_manip", :after => "Layouts", :visibility => [:all]
    Page.send :include, StringManip
  end

  def deactivate
    # admin.tabs.remove "String Manip"
  end
end
