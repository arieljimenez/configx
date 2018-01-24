# Dowonload the latest vscode (they update the ref not the link :)
wget https://go.microsoft.com/fwlink/?LinkID=760868 && \
mv index.html\?LinkID=760868 code.deb

# install't
sudo apt install ./code.deb -y && rm -f code.deb

# now the good part.... install all the extensions ~at once~ one by one... -.-
# TODO: do a foreach with a file or an array.
code --install-extension DavidAnson.vscode-markdownlint && \
code --install-extension Tyriar.sort-lines && \
code --install-extension robertohuertasm.vscode-icons && \
code --install-extension eamodio.gitlens  && \
code --install-extension PeterJausovec.vscode-docker && \
code --install-extension sbrink.elm && \
code --install-extension Rubymaniac.vscode-html-to-elm && \
code --install-extension joeandaverde.vscode-elm-jump && \
code --install-extension lukehoban.go && \
code --install-extension mrmlnc.vscode-autoprefixer && \
code --install-extension sysoev.language-stylus && \
code --install-extension konstantinkai.vscode-css-to-stylus && \
code --install-extension Zignd.html-css-class-completion && \
code --install-extension michelemelluso.code-beautifier && \
code --install-extension andyyaldoo.vscode-json && \
code --install-extension lamartire.git-indicators && \
code --install-extension bierner.markdown-emoji && \
code --install-extension WakaTime.vscode-wakatime && \
code --install-extension ms-python.python

# BETA
# necinc.elmmet
# ritwickdey.live-sass
