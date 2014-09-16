android-dev
===========
Android Studio, Android-SDK, Intel HAXM Module "hotfix",  VirtualBox+Genymotion


This cookbook sets up everything (except for updating SDK elements, but you can do that in Android Studio, anyway).  I've noticed that sometimes updating using the sdk's CLI doesn't always work, and it will continually download and update the same packages in a looop.

If you're on a Mac, you're in luck.  This will even patch the Intel HAXM module!  I've only tested this on OSX and Debian, but it should work on any linux distro.  If anyone cares to validate it on their OS, please fork the repo and send me a pull request.


Requirements
------------
You'll need Java 6+ to run android studio.  API-19 (KitKat) supports Java7, but you'll want Java6 for all other api levels.
On OSX, the Java installer will fire up when you launch Android Studio, on Linux, you'll want to use the java cookbook

#### packages
- `java` - android-studio needs java

Usage
-----
Just add `role[android-dev]` in your node's `run_list`:

```json
{
  "name":"my_android_dev_workstation_would_be_a_silly_hostname_for_a_node",
  "run_list": [
    "role[android-dev]"
  ]
}
```

Chef Solo
-----
```bash
chef-solo -c solo.rb -o "role[android-dev]" -ldebug
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jake Plimack
