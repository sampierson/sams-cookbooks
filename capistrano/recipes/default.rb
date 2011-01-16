include_recipe "ssh"

directory "/u" do
  action :create
end

directory "/u/apps" do
  owner "ubuntu"
  group "www-data"
  mode "2755"
  action :create
end

template "/home/ubuntu/.ssh/environment" do
  source "ssh/environment"
  owner "ubuntu"
  group "ubuntu"
  mode "0600"
end

template "/home/ubuntu/.ssh/config" do
  source "ssh/config"
  owner "ubuntu"
  group "ubuntu"
  mode "0600"
end
