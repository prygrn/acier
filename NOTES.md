# Commands for each steps

## Buildroot

`git clone --recurse-submodules git@github.com:prygrn/acier.git`
`cd buildroot-external/ && make acier_defconfig`
`cd output/ && make`
`cd ../../ && ./start-qemu.sh`
