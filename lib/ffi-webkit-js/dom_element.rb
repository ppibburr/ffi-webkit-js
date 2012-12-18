module WebKit
  load_class :DOMElement
  class DOMElement
    def to_js ctx
      val = get_attribute("tokenid")
      doc = ctx.get_global_object.document
      doc.query_selector("[tokenid=\"#{val}\"]")
    end
  end
end
