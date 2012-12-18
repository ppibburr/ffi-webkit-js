require File.expand_path('test_helper.rb', File.dirname(__FILE__))

Gtk.init []

v = WebKit::WebView.new
v.load_html_string("<html><body></body></html>",'')

v.signal_connect("load-finished") do |view,frame,q|
  document = (d=v.get_dom_document).get_document_element
  body = document.get_elements_by_tag_name("body").item(0)
  div = d.create_element("div")
  div.set_attribute("tokenid","14")
  body.append_child(div)
  
  describe WebKit::DOMElement do
    describe "#to_js" do
      it "returns instance of JS::Object" do
        js = div.to_js(frame.get_global_context)
        assert_instance_of(JS::Object,js)
      end
    end
  end
  Gtk.main_quit
end
Gtk.main

