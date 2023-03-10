# -e NO_AT_BRIDGE=1 \
# -e DISPLAY=$DISPLAY \
# -v $(pwd)/seed.img:/img/seed.img \
# -v /tmp/.X11-unix:/tmp/.X11-unix \
# -v $HOME/.Xauthority:/root/.Xauthority \
docker run -it --rm \
  --device=/dev/kvm \
  --device=/dev/net/tun \
  --cap-add NET_ADMIN \
  -v $(pwd)/server.nanocl.img:/img/server.img \
  nanocl-qemu:test -accel kvm -m 4G -smp 4 -hda /img/server.img --nographic
