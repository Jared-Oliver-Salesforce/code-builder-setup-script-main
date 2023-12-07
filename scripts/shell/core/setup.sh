# setup git
echo " "
echo "configuring git..."

echo " "
echo "Enter your name to put in git commits"
read GIT_USERNAME
git config --global user.name "$GIT_USERNAME"

echo " "
echo "Enter your email to put in git commits"
read GIT_EMAIL
git config --global user.email "$GIT_EMAIL"
git config -l

echo " "
echo "all done!"