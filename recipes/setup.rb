package "nano" do
  action :install
end

package "tree" do
  action :install
end

package "git" do
  action :install
end

file "/etc/motd" do
  action :create
  content "Property of ..."
end
