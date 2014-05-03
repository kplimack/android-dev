



case node[:platform_family]
when "mac_os_x"
  default[:genymotion][:url] = "http://files2.genymotion.com/genymotion/genymotion-2.2.0/genymotion-2.2.0.dmg"
  default[:genymotion][:checksum] = "40d128e61f02"
when "debian"
  default[:genymotion][:url] = "http://files2.genymotion.com/genymotion/genymotion-2.2.0/genymotion-2.2.0_x64_debian.bin"
  default[:genymotion][:checksum] = "ca4add7bd733"
when "centos", "ubuntu", "rhel"
  default[:genymotion][:url] = "http://files2.genymotion.com/genymotion/genymotion-2.2.0/genymotion-2.2.0_x64.bin"
  # not officially supported, i'm all osx and debian these days, obviously pull-requests are welcome if you would like to add support for your incorrect OS choice
end
