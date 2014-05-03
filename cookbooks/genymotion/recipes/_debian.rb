




remote_file "#{Chef::Config[:file_cache_path]}/genymotion.bin" do
  source node[:genymotion][:url]
  checksum node[:genymotion][:checksum]
  action :create_if_missing
end
