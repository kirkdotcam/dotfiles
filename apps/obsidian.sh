OBSIDIAN_DEB_URL="$(
  curl -fsSL https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest |
  jq -r '.assets[]
    | select(.name | test("_amd64\\.deb$"))
    | .browser_download_url'
)"

curl -fL "$OBSIDIAN_DEB_URL" -o /tmp/obsidian.deb
sudo apt-get install -y /tmp/obsidian.deb
rm -f /tmp/obsidian.deb
