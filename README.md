My Bash Profile
===============

My profile, based on and largely stolen from [matschaffer's profile](https://github.com/matschaffer/profile).

Installation
------------

    curl -s https://raw.github.com/mdb/profile/master/install | bash

From here you can now put any `*.conf` in `~/.profile.d` and it'll get loaded in alphabetical order. You can also make directories that end in `.conf` which profile will then load all the `.conf` files in that directory in order.

Additionally, if you need some OS-specific configuration, put a folder in `.profile.d` or `.profile.d/core` with the name returned by `uname`, for example `.profile.d/Darwin`. The profile checks `uname` when bash starts and loads any `.conf` files or directories in this OS-specific folder.

Load order
----------

This profile loads `init` first, followed by all the `.conf` files in `.profile.d/core`, then any `.conf` files in `.profile.d`. This way you can put any general use configs in `core` and anything personal in `.profile.d`. If you want to keep your personal profile information in git, just set up `core` as a submodule to your personal repository.
