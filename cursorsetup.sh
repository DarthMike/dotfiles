#!/bin/sh

echo '...Setting up Cursor configuration...'
# Remove existing .cursor directory if it exists
rm -rf "$HOME/.cursor"

# Create symbolic link
ln -s "$(pwd)/.cursor" "$HOME/.cursor"

echo '...Importing Cursor Swift profile...'
echo 'Please manually import the Swift.code-profile in Cursor:'
echo '1. Open Cursor'
echo '2. Go to Settings > Profiles'
echo '3. Click "Import Profile"'
echo '4. Select the Swift.code-profile file'