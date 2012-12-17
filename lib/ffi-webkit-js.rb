require 'gir_ffi'
require 'JS'

GirFFI.setup :WebKit

module WebKit
  module Lib
    attach_function :webkit_web_frame_get_global_context,
      [:pointer], :pointer
  end
end

require 'ffi-webkit-js/web_frame'
