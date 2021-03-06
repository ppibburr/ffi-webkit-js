require 'rubygems'
require 'ffi-webkit-js'

Gtk.init []
v = WebKit::WebView.new
v.load_html_string("<html><body></body></html>",'')
v.signal_connect("load-finished") do |view,frame,q|
  document = (d=v.get_dom_document).get_document_element
  body = document.get_elements_by_tag_name("body").item(0)
  div = d.create_element("div")
  div.set_attribute("tokenid","14")
  body.append_child(div)
  p d.query_selector('[tokenid="14"]').to_ptr.address,div.to_ptr.address
  js = div.to_js(frame.get_global_context)
  p js.attributes["tokenid"].nodeValue
  Gtk.main_quit
end
Gtk.main
