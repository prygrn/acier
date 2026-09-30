#!/bin/sh

SCRIPT_DIRECTORY=$(dirname "$0")
IMAGES_DIR=${SCRIPT_DIRECTORY}/buildroot-external/output/images
QEMU=${SCRIPT_DIRECTORY}/buildroot-external/output/host/bin/qemu-system-aarch64

for mandatory_file in "$IMAGES_DIR/Image" "$IMAGES_DIR/rootfs.ext4"; do
    [ -f "$mandatory_file" ] || { echo "Missing: $mandatory_file. Run make from $(dirname "$IMAGES_DIR")" >&2; exit 1; }
done

[ ! -x "$QEMU" ] || { echo "File $QEMU is not executable. Run make from $(dirname "$IMAGES_DIR")" >&2; exit 1; }

exec "${QEMU}" -M virt -cpu cortex-a53 -nographic -smp 1 -kernel "${IMAGES_DIR}"/Image \
    -append "rootwait root=/dev/vda console=ttyAMA0" -netdev user,id=eth0 \
    -device virtio-net-device,netdev=eth0 \
    -drive file="${IMAGES_DIR}"/rootfs.ext4,if=none,format=raw,id=hd0 \
    -device virtio-blk-device,drive=hd0 \
    "$@"
