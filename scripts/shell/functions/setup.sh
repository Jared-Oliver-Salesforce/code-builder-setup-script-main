DIFF_RESULT=`diff --brief scripts/shell/functions/server-key scripts/shell/functions/server-key-orig`
if [ "$DIFF_RESULT" = "" ]
then
	echo "put your private key file contents in server-key per README instructions before running again"
	exit 0
fi

echo " "
echo "configuring Functions connection..."

echo " "
echo "Enter the username for your JWT Connected App"
read JWTFNUSERNAME

echo " "
echo "Enter the Client Key for your JWT Connected App"
read JWTFNCLIENTID

echo " "
echo "setting up Functions commands..."
export FN_SSH_DIR=$HOME/.config/ssh/jwt-functions

mkdir -p $FN_SSH_DIR

echo "export FN_SSH_DIR=$FN_SSH_DIR" > $FN_SSH_DIR/config.sh
cat scripts/shell/functions/jwt-config.sh >> $FN_SSH_DIR/config.sh
echo "export JWTFNUSERNAME=$JWTFNUSERNAME" >> $FN_SSH_DIR/config.sh
echo "export JWTFNCLIENTID=$JWTFNCLIENTID" >> $FN_SSH_DIR/config.sh

cp scripts/shell/functions/server-key $FN_SSH_DIR/server.key

chmod u+w ~/.bashrc
cat scripts/shell/functions/dot-bashrc >> ~/.bashrc

echo " "
echo "all done!"
