maintainer        "Sam Pierson"
maintainer_email  "sam.j.pierson@gmail.com"
license           ""
description       "Setup application"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version           "0.0.1"
recipe            "application", "Sets up application"

%w{ ubuntu debian arch}.each do |os|
  supports os
end

%w{ runit }.each do |cb|
  depends cb
end
