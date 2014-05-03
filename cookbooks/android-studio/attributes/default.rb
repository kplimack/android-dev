




default[:android][:packages] = %w{ }

default[:android][:install_haxm] = true
default[:android][:use_gradle] = true

case node['platform_family']
when "debian", "rhel", "centos", "fedora", "gentoo", "arch", "openbsd", "slackware", "suse"
  default[:android][:url] = "http://dl.google.com/android/studio/install/0.5.2/android-studio-bundle-135.1078000-linux.tgz"
  default[:android][:url] = "0b9e2fd0e977"
when "mac_os_x"
  default[:android][:url] = "http://dl.google.com/android/studio/install/0.5.2/android-studio-bundle-135.1078000-mac.dmg"
  default[:android][:checksum] = "fbb0500af402"
  default[:android][:haxm][:url] = "https://software.intel.com/sites/default/files/managed/68/45/haxm-macosx_r04.zip"
end

default[:android][:emulator][:genymotion] = true
