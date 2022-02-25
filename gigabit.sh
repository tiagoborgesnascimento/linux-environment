#remover o perfil antes
mii-tool -F 1000baseT-FD
ethtool -s enp3s0 speed 1000 duplex full
