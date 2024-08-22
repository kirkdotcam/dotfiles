curl -Lo firacode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip

unzip firacode.zip
mkdir -p ~/.local/share/fonts
mv FiraCode*.ttf ~/.local/share/fonts
rm LICENSE README.md firacode.zip
