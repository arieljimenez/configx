# Lets play on Linux :)

sudo apt update && sudo apt upgrade && \
    sudo apt install \
        libgl1-mesa-dri:i386 \
        libgl1-mesa-glx:i386 \
        libc6:i386 \
        steam \
        --fix-missing \
        -y

rm $HOME/.local/share/Steam/ubuntu12_32/steam-runtime/i386/lib/i386-linux-gnu/libgcc_s.so.1 && \
    rm $HOME/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.6
