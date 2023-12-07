CONFIGDIR=~/.local/share/code-server/User
BACKUPFILE=settings.orig

pushd $CONFIGDIR

if [ ! -f "$BACKUPFILE" ]; then
  cp settings.json $BACKUPFILE
fi

cat <<< $(jq '. += {"workbench.colorTheme": "Visual Studio Dark"}' settings.json) > settings.json
cat <<< $(jq '. += {"editor.fontSize": 18}' settings.json) > settings.json
cat <<< $(jq '. += {"scm.inputFontSize": 14}' settings.json) > settings.json
cat <<< $(jq '. += {"debug.console.fontSize": 18}' settings.json) > settings.json
cat <<< $(jq '. += {"markdown.preview.fontSize": 18}' settings.json) > settings.json
cat <<< $(jq '. += {"terminal.integrated.fontSize": 18}' settings.json) > settings.json

popd

echo ""
echo "Refresh your browser in order for your themes and fonts to take effect."
echo ""