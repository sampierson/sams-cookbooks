maintainer        "Sam Pierson"
maintainer_email  "sam.j.pierson@gmail.com"
license           ""
description       "Prepare for Capistrano run"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version           "0.0.1"
recipe            "capistrano", "Prepare for Capistrano run"

%w{ ubuntu debian arch}.each do |os|
  supports os
end

%w{ runit }.each do |cb|
  depends cb
end
