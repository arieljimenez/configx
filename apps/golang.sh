#Installing Go
GOVER="go1.10.1"
PLATFORM="darwin"

echo "Installing $GOVER"

wget https://storage.googleapis.com/golang/$GOVER.$PLATFORM-amd64.tar.gz \
    && sudo tar -xf $GOVER.$PLATFORM-amd64.tar.gz -C /usr/local/ \
    && rm $GOVER.$PLATFORM-amd64.tar.gz
