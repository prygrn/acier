git clone git@gitlab.com:buildroot.org/buildroot.git
git checkout -b <last_version
find the correct defconfig called $DEFCONFIG
make $DEFCONFIG
make
start-qemu.sh --serial-only
