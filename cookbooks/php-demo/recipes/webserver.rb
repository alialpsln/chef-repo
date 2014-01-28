directory node.normal.app.web_dir do
  owner node.normal.user.name
  mode "0755"
  recursive true
end

directory "#{node.normal.app.web_dir}/public" do
  owner node.normal.user.name
  mode "0755"
  recursive true
end

directory "#{node.normal.app.web_dir}/logs" do
  owner node.normal.user.name
  mode "0755"
  recursive true
end

template "#{node.nginx.dir}/sites-available/#{node.normal.app.name}.conf" do
  source "nginx.conf.erb"
  mode "0644"
end

nginx_site "#{node.normal.app.name}.conf"

cookbook_file "#{node.normal.app.web_dir}/public/index.html" do
  source "index.html"
  mode 0755
  owner node.normal.user.name
end