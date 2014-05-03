
remote_file "#{Chef::Config[:file_cache_path]}/android-studio.dmg" do
  source node[:android][:url]
  checksum node[:android][:url]
  not_if 'test -d "/Applications/Android Studio.app"'
  notifies :run, "execute[AndroidStudioInstaller]"
end

execute "AndroidStudioInstaller" do
  cwd Chef::Config[:file_cache_path]
  command <<EOH
hdiutil mount android-studio.dmg
cd "/Volumes/Android Studio 135.1078000"
cp -r "Android Studio.app" /Applications
cd
hdiutil unmount "/Volumes/Android Studio 135.1078000"
chgrp -R staff "/Applications/Android Studio.app"
chmod -R g+rwx "/Applications/Android Studio.app"
EOH
  not_if 'test -d "/Applications/Android Studio.app"'
end

