# add shortcuts
echo " "
echo "adding shortcuts..."
mkdir -p $HOME/.config/scripts
cp scripts/shell/projects/setup.sh $HOME/.config/scripts/projects_reset.sh
cp scripts/shell/cli/update.sh $HOME/.config/scripts/cli_update.sh
chmod u+w $HOME/.bashrc
cat scripts/shell/shortcuts/dot-bashrc >> $HOME/.bashrc

# add build tasks
echo " "
echo "adding build tasks..."
mkdir -p $HOME/.vscode
cat scripts/shell/shortcuts/dot-vscode-tasks > $HOME/.vscode/tasks.json

echo " "
echo "all done!"
