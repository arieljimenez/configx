# Good to know -> How to change the shell: $ chsh -s /bin/zsh
# get Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# get powerlevel9k theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# ZSH
if [ -f ~/.zshrc ] ; then
    mv ~/.zshrc ~/.zshrc_BAK
fi

cp ../configs/.zshrc ~/.zshrc && \
cp ../configs/.zshprofile ~/.zshprofile
