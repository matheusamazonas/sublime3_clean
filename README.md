# Sublime3 Package for Clean
A [Sublime3](https://www.sublimetext.com) package for the functional programming language [Clean](http://clean.cs.ru.nl/Clean).

I decided to restart the package from scratch instead of just adapting the Haskell one. I'm currently working on better build tools with both CLM and CPM support. That work is currently on the "revamp" branch. I'll keep the adapted version on the "master" branch and slowly merge it into "master".

So far, the package only contains (incomplete) syntax highlighting and building tools. It's still under development, but on a really slow pace.

Installation
-------------
#### Automated
* MacOS: simply run *install.sh*. 
* Windows: no automated installation yet. Check manual installation.

#### Manual
If the installation script fails, you can still install the package manually. Compress the "Clean" folder to a *zip* file and change its extension to ".sublime-package" and copy it. Navigate to the directory where Sublime is installed and paste the package file inside the "Packages" folder. Finally, restart Sublime and all the package features should be enabled.

Source
-------------
Given that Clean and Haskell are both functional languages that share a similar syntax, I based this package on Sublime's default Haskell package.


