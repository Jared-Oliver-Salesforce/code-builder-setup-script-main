CONFIGDIR=~/.local/share/code-server/User
BACKUPFILE=settings.orig

pushd $CONFIGDIR

if [ ! -f "$BACKUPFILE" ]; then
  cp settings.json $BACKUPFILE
fi

cat <<< $(jq '. += {"workbench.colorTheme": "Solarized Dark"}' settings.json) > settings.json
cat <<< $(jq '. += {"editor.fontSize": 14}' settings.json) > settings.json
cat <<< $(jq '. += {"scm.inputFontSize": 14}' settings.json) > settings.json
cat <<< $(jq '. += {"debug.console.fontSize": 14}' settings.json) > settings.json
cat <<< $(jq '. += {"markdown.preview.fontSize": 14}' settings.json) > settings.json
cat <<< $(jq '. += {"terminal.integrated.fontSize": 14}' settings.json) > settings.json

popd

echo ""
echo "Refresh your browser in order for your themes and fonts to take effect."
echo ""