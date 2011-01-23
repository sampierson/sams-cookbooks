
template "/etc/apache2/sites-available/fotomin" do
  source "apache2/sites-available/fotomin"
  owner "root"
  group "root"
  mode "0644"
end

link "/etc/apache2/sites-enabled/001-fotomin" do
  link_type :symbolic
  to "../sites-available/fotomin"
  notifies :reload, "service[apache2]"
end
