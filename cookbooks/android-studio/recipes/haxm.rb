
remote_file "#{Chef::Config[:file_cache_path]}/haxm-macosx_r04.zip" do
  source node[:android][:haxm][:url]
  action :create_if_missing
  notifies :run, "execute[AndroidStudioInstaller]"
end


execute "AndroidStudioInstaller" do
  cwd Chef::Config[:file_cache_path]
  command <<EOH
unzip haxm-macosx_r04.zip
cd haxm-macosx_r04
hdiutil mount IntelHAXM_1.0.8.dmg
cd /Volumes/IntelHAXM_1.0.8
installer -package IntelHAXM_1.0.8.mpkg -target /
hdiutil unmount /Volumes/IntelHAXM_1.0.8
EOH
  not_if "kextstat | grep intelhaxm"
end

