# LÖVE Skeleton
## A quick setup for new LÖVE projects in Visual Studio Code.

If you're following along with [Sheepolution's How To LÖVE guide](https://sheepolution.com/learn), or you just want to jump into making games with [LÖVE](https://love2d.org/) quickly, you can use this to get your [VS Code](https://code.visualstudio.com/) configured with the bare minimum to debug, build, and run your game.

The simplest way to use this is to [Download the ZIP file from GitHub](https://github.com/burritomancer/love-skeleton-vs/archive/refs/heads/master.zip) rather than make a fork, then rename the unzipped folder to what you want to use and get started. 

There are a few important notes when using this.

1. This does not install the prerequisite plugins, it can only recommend them to be installed. Make sure to do so from the icon that appears in the lower right when opening the project or pretty much nothing is gonna work.
2. This does not install LÖVE itself. You do not need a separate Lua installation, just the most recent download from [Love2D.org](https://love2d.org/).
3. If you're on Mac OS, either Intel or Silicon, be sure and install Python's certificates or your builds won't work. In Finder, Choose Applications, then Python 3.x, then double-click `Install Certificates.command` and wait for it to complete.
4. Your `make_all.toml` file should have the `default_targets` adjusted depending on the operating system you're using. You can omit `lovejs` if you aren't interested in a web-playable version of your game.
* Windows: `default_targets = ["win32", "win64", "lovejs"]`
* Mac: `default_targets = ["macos", "lovejs"]`. 
* Linux: `default_targets = ["appimage", "lovejs"]`.
5. Related to the above, if you want to build for other platforms, it's still doable but slightly outside the scope of what I want to do with this. This is a bare-bones starting point. Further information is available on the [Wiki](https://love2d.org/wiki/Game_Distribution). Note it can be fairly involved, but by the time you're ready to distribute your game to the whole world, this will be worth your time.