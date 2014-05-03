
include_recipe "java"

remote_file "#{Chef::Config[:file_cache_path]}/android-studio.tgz" do
  source node[:android][:url]
  checksum node[:android][:url]
  action :create_if_missing
  notifies :run, "execute[AndroidStudioInstaller]"
end

execute "AndroidStudioInstaller" do
  cwd Chef::Config[:file_cache_path]
  command <<EOH
tar zxf android-studio.tgz -C /usr/local/bin/android-studio
echo "export PATH=$PATH:/usr/local/bin/android-studio/bin" > /etc/profile.d/android-studio.sh
chmod +x /etc/profile.d/android-studio.sh
EOH
  not_if "test -f /usr/local/bin/android-studio/"
end

