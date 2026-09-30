# Commands for each steps

## Buildroot

`git clone --recurse-submodules git@gitlab.com:buildroot.org/buildroot.git`
`git checkout 2026.08`
`cd buildroot-external/ && make acier_defconfig`
`cd output/ && make`
`./start-qemu.sh`
`make BR2_EXTERNAL=/home/pierre/dev/acier/buildroot-external menuconfig` : With BR2_EXTERNAL be run once - Buildroot memorize it in output.br2-external.mk
