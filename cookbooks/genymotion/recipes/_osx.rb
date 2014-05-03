

remote_file "#{Chef::Config[:file_cache_path]}/genymotion.dmg" do
  source node[:genymotion][:url]
  checksum node[:genymotion][:checksum]
  action :create_if_missing
end



execute "GenymotionInstaller" do
  cwd Chef::Config[:file_cache_path]
  command <<EOH
hdiutil mount genymotion.dmg
cd /Volumes/genymotion-2.2.0
cp -r Genymotion.app /Applications
cp -r "Genymotion Shell.app" /Applications
cd
hdiutil unmount /Volumes/genymotion-2.2.0
EOH
  not_if "test -d /Applications/Genymotion.app"
end
