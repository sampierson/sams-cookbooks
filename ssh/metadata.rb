maintainer        "Sam Pierson"
maintainer_email  "sam.j.pierson@gmail.com"
license           ""
description       "Configure ssh"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version           "0.0.1"
recipe            "ssh", "Configure ssh"

%w{ ubuntu debian arch}.each do |os|
  supports os
end

%w{ runit }.each do |cb|
  depends cb
end
