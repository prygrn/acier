# Commands for each steps

## Buildroot

`git clone git@gitlab.com:buildroot.org/buildroot.git`
`git checkout 2026.08`
`make qemu_aarch64_virt_defconfig`
`make`
`output/images/start-qemu.sh --serial-only`
`make BR2_EXTERNAL=/home/pierre/dev/acier/buildroot-external menuconfig` : With BR2_EXTERNAL be run once - Buildroot memorize it in output.br2-external.mk
