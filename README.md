# Sublime Text 3 Package for Clean
A [Sublime Text 3](https://www.sublimetext.com) package for the functional programming language [Clean](http://clean.cs.ru.nl/Clean).

I decided to restart the package from scratch instead of just adapting the Haskell one. So far, the build system and the syntax are mostly done and currently I'm working on tests, snippets and improving the syntax. The plugin is still under development, but on a slow pace.

Future plans (way down the road) include Cloogle integration.


Features
-------------
* Clean syntax highlighting
* Build system using CPM, CLM 

Installation
-------------
#### Automated
* MacOS X: simply run *install.sh*. 
* Windows and Linux: no automated installation yet. Check manual installation.

#### Manual
If the installation script fails, you can still install the package manually. Compress the "Clean" folder to a *zip* file, change its extension to ".sublime-package" and copy it. Navigate to the sublime data path (OS dependent, see below) and paste it. 
Data path:
* MacOS X: ~/Library/Application Support/Sublime Text 3/Installed Packages
* Windows: %APPDATA%\Sublime Text 3\Installed Packages
* Linux: ~/.config/sublime-text-3/Installed Packages

Navigate to the directory where Sublime is installed and paste the package file inside the "Packages" folder. Finally, restart Sublime and all the package features should be enabled.

Build Tool
-------------
The plugin provides a Sublime build tool for Clean projects and standalone files. Even though it's handy to have an integrated build system, it has some limitations and shouldn't be user some circumstances, including:
* When any type of console I/O is performed
* When using a webserver, i.e. iTasks
* When interrupting execution is needed (the window will close by the process will remain alive and running)

This is due to Sublime Text limitations. Other (official) plugins suffer from the same problem (check the Python build tool, for instance).

To build a file/project, press ⌘+B (Ctrl+B on Windows and Linux). The build system will do the following, in order:
* Look for a Clean project file (.prj) that matches the same name as the currently opened file use CPM to build the project using it
* Look for any Clean project file in the same directory and use CPM to build the project
* Use CLM to build the file in standalone mode

When any of the options above succeeds, the build system will run the newly created executable without command line arguments. 

As stated before, the build system might be really handy for small projects, testing and standalone files. For a more fine-grained, flexible experience, use the terminal.

Syntax Highlighting
-------------
The plugin will turn Clean syntax highlighting on automatically for files with .icl and .dcl extensions. If for some reason you with to use Clean syntax highlighting on files with different extension, just navigate to View>Syntax>Clean. The syntax highlight is a work in progress and might contain a few bugs. Please open a new issue if you find one, preferably with some code example so we can easily reproduce the bug.

