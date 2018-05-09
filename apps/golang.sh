#Installing Go
GOVER="go1.10.2"
PLATFORM="darwin"

echo "Installing $GOVER"

wget https://storage.googleapis.com/golang/$GOVER.$PLATFORM-amd64.tar.gz \
    && sudo tar -xf $GOVER.$PLATFORM-amd64.tar.gz -C /usr/local/ \
    && rm $GOVER.$PLATFORM-amd64.tar.gz

# Create the paths for development
mkdir -p \
    ~/Code/go/bin \
    ~/Code/go/src/github.com/arieljimenez
