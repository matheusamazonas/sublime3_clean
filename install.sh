#!/bin/sh

# If it was installed locally (current user), this should be the directory
user_dir="$HOME/Library/Application Support/Sublime Text 3/Installed Packages"
# If it was installed in a custom directory, place it here (until the Packages folder, see above)
custom_dir=""

#cd Clean

if [ -d "$user_dir" ]
then
	echo "Compressing the folder"
	zip -r Clean.zip *
	echo "Moving the file"
	mv Clean.zip "$user_dir/Clean.sublime-package"
	echo "Done"
else
	if [ -d "$custom_dir" ]
	then
		echo "Compressing the folder"
    	zip -r Clean.zip *
    	echo "Moving the file"
    	mv Clean.zip "$custom_dir/Clean.sublime-package"
    	echo "Done"
	else
		echo "Error: Sublime isn't installed and custom directory doesn't exist. Check the install.sh file."
	fi
fi
