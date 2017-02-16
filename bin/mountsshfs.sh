set -e
set -x

mountpoint=$HOME/volumes/${1}
echo "mounting ${1}:~/ in $mountpoint"

mkdir -v -p  $mountpoint
sshfs ${1}: $mountpoint
