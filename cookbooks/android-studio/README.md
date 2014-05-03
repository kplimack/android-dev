android-studio Cookbook
=======================
Install Android-Studio

Supports
--------
* Linux
* OSX

Requirements
------------
You'll need Java 6+ to run android studio.  API-19 (KitKat) supports Java7, but you'll want Java6 for all other api levels.
On OSX, the Java installer will fire up when you launch Android Studio, on Linux, you'll want to use the java cookbook

#### packages
- `java` - android-studio needs java

Usage
-----
Just include `android-studio` in your node's `run_list` -- but you should probably make an android-dev role and include it that way:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[android-studio]"
  ]
}
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
