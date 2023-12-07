# update CLI to latest
echo " "
echo "updating CLI to latest version..."
npm install -g sfdx-cli
npm install -g @salesforce/cli

sfdx --version
sf --version

echo " "
echo "all done!"