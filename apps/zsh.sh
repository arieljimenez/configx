# Good to know -> How to change the shell: $ chsh -s /bin/zsh
# get Oh-my-zsh and later get powerlevel9k theme
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    sleep 15 && \
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# ZSH
if [ -f ~/.zshrc ] ; then
    mv ~/.zshrc ~/.zshrc_BAK
fi

cp ../configs/.zshrc ~/.zshrc && \
cp ../configs/.zshprofile ~/.zshprofile

# on osx this file does not exist
cp ../configs/.bash_profile ~
