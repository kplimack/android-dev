


# If these dirs don't work for you, just set ENV['COOKBOOK_PATH'] to point where you need it to.

paths = ENV['COOKBOOK_PATH'] || Array.new
%w{ chef/cookbooks repos/chef repos/android-dev }.each do |cb_path|
  paths << ENV['HOME'] + '/' + cb_path
end


cookbook_path paths.map! { |path| "#{path}/cookbooks" } + Chef::Config[:cookbook_path]
role_path paths.map! { |path| "#{path}/roles" } + Chef::Config[:cookbook_path]
environment_path paths.map! { |path| "#{path}/environments" } + Chef::Config[:cookbook_path]
data_bag_path paths.map! { |path| "#{path}/data_bags" } + Chef::Config[:cookbook_path]
puts "COOKBOOK_PATH: " + cookbook_path.inspect
puts "ROLE_PATH: " + role_path.inspect
puts "ENV_PATH: " + environment_path.inspect
puts "DB_PATH: " + data_bag_path.inspect
