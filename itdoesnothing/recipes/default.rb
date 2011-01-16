
template "/etc/apache2/sites-available/itdoesnothing" do
  source "apache2/sites-available/itdoesnothing"
  owner "root"
  group "root"
  mode "0644"
end

link "/etc/apache2/sites-enabled/001-itdoesnothing" do
  link_type :symbolic
  to "../sites-available/itdoesnothing"
  notifies :reload, "service[apache2]"
end
