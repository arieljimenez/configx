# Heroku
# will ask sudo pass
wget -qO- https://cli-assets.heroku.com/install-ubuntu.sh | sh

# to login
heroku login

# add a heroku-remote repo
heroku git:remote -a ${myrepo}

# just puuushhhh
git push heroku ${branch}
