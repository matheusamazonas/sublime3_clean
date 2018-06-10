# Sublime Text 3 Package for Clean
A [Sublime Text 3](https://www.sublimetext.com) package for the functional programming language [Clean](http://clean.cs.ru.nl/Clean).

Linux and macOS: [![Build Status](https://travis-ci.com/matheusamazonas/sublime3_clean.svg?branch=master)](https://travis-ci.com/matheusamazonas/sublime3_clean)

I decided to restart the package from scratch instead of just adapting the Haskell one. So far, the build system and the syntax are mostly done and currently I'm working on tests, snippets and improving the syntax. The plugin is still under development, but on a slow pace.

Future plans (way down the road) include Cloogle integration.


Features
-------------
* Clean syntax highlighting
* Build system using CPM, CLM 

Installation
-------------
#### Automated
* macOS X: simply run `install.sh`.
* Windows and Linux: no automated installation yet. Check manual installation.

#### Manual
If the installation script fails, you can still install the package manually. Compress the `Clean` folder to a `zip` file, change its extension to ".sublime-package" and copy it. Navigate to the sublime data path (OS dependent, see below) and paste it in `<data_path>/Installed Packages`

Data paths:
* macOS X: `~/Library/Application Support/Sublime Text 3/`
* Windows: `%APPDATA%\Sublime Text 3\`
* Linux: `~/.config/sublime-text-3/`

Finally, restart Sublime and all the package features should be enabled.

Development
-------------
If you're planning to contribute to this package (or simply modify it for fun), it's strongly advised to use an alternative to the installation procedure. The installation procedure described in the previous section compresses the `Clean` folder and copies it to Sublime's data path. Although this might work for a user, a developer might find out that it brings a problem: syntax tests won't run. 

Due to SublimeText's limitations, a syntax test will only run on files that live inside Sublime's `Package` folder, otherwise it will throw the given error: "The current file can not be used for testing since it is not loaded by Sublime Text. This is usually caused by a file not located in, or symlinked to, the Packages folder."

To overcome this problem, one can simply navigate to `<data_path>/Packages` and create a symbolic link to the repo's `Clean` folder. For example, on macOS:

```shell session
ln -s <repo_path>/Clean/ <data_path>/Packages/Clean
```

This way, every time you edit a file on your repo, you'll be editing the exact same file Sublime is loading. This enables running syntax tests directly on your repo files.

Build Tool
-------------
The plugin provides a Sublime build tool for Clean projects and standalone files. Even though it's handy to have an integrated build system, it has some limitations and shouldn't be user some circumstances, including:
* When any type of console I/O is performed
* When using a webserver, i.e. `iTasks`
* When interrupting execution is needed (the window will close but the process will remain alive and running)

This is due to Sublime Text limitations. Other (official) plugins suffer from the same problem (check the Python build tool, for instance).

To build a file/project, press ⌘+B (Ctrl+B on Windows and Linux). The build system will do the following, in order:
* Look for a Clean project file (.prj) that matches the name of the currently opened file and use CPM to build the project using it. If such project file doesn't exist:
* Look for any Clean project file in the same directory and use CPM to build the project. If there is no Clean project file in the current directory:
* Use CLM to build the current file in standalone mode

When any of the options above succeeds, the build system will run the newly created executable without command line arguments. 

As stated before, the build system might be really handy for small projects, testing and standalone files. For a more fine-grained, flexible experience, use the terminal.

Syntax Highlighting
-------------
The plugin will turn Clean syntax highlighting on automatically for files with .icl and .dcl extensions. If for some reason you wish to use Clean syntax highlighting on files with different extensions, just navigate to `View>Syntax>Clean`. The syntax highlight is a work in progress and might contain a few bugs. Please open a new issue if you find one, preferably with some code example so we can easily reproduce the bug.

