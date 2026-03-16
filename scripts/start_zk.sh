#!/bin/bash
set -euo pipefail

zk_datadir=/tmp/zookeeper # default path by zookeeper
zk_id="${ZK_ID:-1}"
zk_conf=/opt/zookeeper/conf/zoo.cfg

[ -d "${zk_datadir}" ] || mkdir -p "${zk_datadir}"
echo "Generating myid file"
echo "${zk_id}" > "${zk_datadir}/myid"

echo "Update configurations"
sed -i "s/admin.enableServer=false/admin.enableServer=true/" "${zk_conf}"
sed -i "s/initLimit=10/initLimit=60/" "${zk_conf}"
sed -i "s/syncLimit=5/syncLimit=30/" "${zk_conf}"
echo "autopurge.snapRetainCount=3" | tee -a "${zk_conf}"
echo "autopurge.purgeInterval=1" | tee -a "${zk_conf}"
echo "quorumListenOnAllIPs=true" | tee -a "${zk_conf}"
echo "4lw.commands.whitelist=*" | tee -a "${zk_conf}"

echo "server.1=${ZK_HOST1:-zookeeper1}:4181:3181" | tee -a "${zk_conf}"
echo "server.2=${ZK_HOST2:-zookeeper2}:4181:3181" | tee -a "${zk_conf}"
echo "server.3=${ZK_HOST3:-zookeeper3}:4181:3181" | tee -a "${zk_conf}"

echo "Current configurations:"
grep -v "^#" "${zk_conf}"

echo "Start ZooKeeper"
exec /opt/zookeeper/bin/zkServer.sh start-foreground
