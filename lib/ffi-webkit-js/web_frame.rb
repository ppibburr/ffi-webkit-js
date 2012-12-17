module WebKit
  load_class :WebFrame
  class WebFrame
    define_method :get_global_context do
      ptr = WebKit::Lib.webkit_web_frame_get_global_context(self)
      JS::GlobalContext.new(:pointer=>ptr)
    end
    
    alias :global_context :get_global_context
    
    define_method :get_global_object do
      global_context.get_global_object
    end
    
    alias :global_object :get_global_object
  end
end
