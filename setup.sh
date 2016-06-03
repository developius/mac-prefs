#!/bin/bash
copy_to_home=(".profile", ".bash_profile", ".gitconfig")

for file in "${copy_to_home[@]}"
do
	cp "$file" ~/
done

. ~/.profile


cp "Default (OSX).sublime-keymap" "/Users/finnian/Library/Application Support/Sublime Text 3/Packages/User"
cp "Preferences.sublime-settings" "/Users/finnian/Library/Application Support/Sublime Text 3/Packages/User"

su admin
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget
brew install node

npm install -g nodemon mongo
