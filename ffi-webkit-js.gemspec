Gem::Specification.new do |s|
  s.name = "ffi-webkit-js"
  s.version = "0.0.1"
  #s.date = Time.now.to_s
 

  s.summary = "Helper to load in JavaScriptCore access in WebKit"

  s.authors = ["Matt Mesanko"]
  s.email = ["tulnor@linuxwaves.com"]
  s.homepage = "http://www.github.com/ppibburr/ffi-webkit-js"
  s.has_rdoc = 'yard'
  s.rdoc_options = ["--main", "README.rdoc"]

  s.files = Dir['{lib,test,tasks,samples}/**/**/*', "*.rdoc", "Rakefile"] & `git ls-files -z`.split("\0")
  p s.files
  #s.extra_rdoc_files = ["README.rdoc", "TODO.rdoc"]
  s.test_files = `git ls-files -z -- test`.split("\0")

  s.add_runtime_dependency(%q<gir_ffi-webkit>, ["~> 0.0.1"])
  s.add_runtime_dependency(%q<ruby_ffi-javascriptcore>, ["~> 1.1.3"])
  s.require_paths = ["lib"]
end
