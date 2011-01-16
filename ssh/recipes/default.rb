
service "ssh" do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true, :reload => true
end

template "/etc/ssh/sshd_config" do
  source "sshd_config"
  owner "root"
  group "root"
  mode "0644"
  notifies :reload, "service[ssh]"
end

