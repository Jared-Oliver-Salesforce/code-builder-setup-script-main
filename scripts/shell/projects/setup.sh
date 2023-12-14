# setup projects directory
echo " "
echo "re-create projects directory..."
rm -rf $HOME/projects
mkdir $HOME/projects

echo " "
echo "add default project..."
pushd $HOME/projects
sf project generate -t empty -n code-builder-demo
popd

echo " "
echo "all done!"
