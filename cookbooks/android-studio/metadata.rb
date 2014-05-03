name             'android-studio'
maintainer       'Jake Plimack'
maintainer_email 'Jake.plimack@gmail.com'
license          'All rights reserved'
description      'Installs/Configures android-studio'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'



%w{ debian rhel centos fedora suse gentoo openbsd mac_osx slackware }.each do |os|
  supports os
end

%w{ genymotion gradle }.each do |dep|
  depends dep
end

# osx will download java when you launch android-studio, linux you'll need at least java 6
%w{ java }.each do |sug|
  suggests sug
end
