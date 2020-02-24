#!/bin/bash

#set -x

ZK_DATADIR=/tmp/zookeeper # default path by zookeeper
[ -d ${ZK_DATADIR} ] || mkdir -p ${ZK_DATADIR}
echo "Generating myid file"
echo "${ZK_ID}" | tee ${ZK_DATADIR}/myid

ZK_CONF=/opt/zookeeper/conf/zoo.cfg

echo "Update configurations"
sed -i "s/admin.enableServer=false/admin.enableServer=true/" ${ZK_CONF}
sed -i "s/initLimit=10/initLimit=60/" ${ZK_CONF}
sed -i "s/syncLimit=5/syncLimit=30/" ${ZK_CONF}
echo "autopurge.snapRetainCount=3" | tee -a  ${ZK_CONF}
echo "autopurge.purgeInterval=1" | tee -a  ${ZK_CONF}
echo "quorumListenOnAllIPs=true" | tee -a  ${ZK_CONF}
echo "4lw.commands.whitelist=*" | tee -a  ${ZK_CONF}

echo "server.1=zk_zookeeper1:4181:3181" | tee -a  ${ZK_CONF}
echo "server.2=zk_zookeeper2:4181:3181" | tee -a  ${ZK_CONF}
echo "server.3=zk_zookeeper3:4181:3181" | tee -a  ${ZK_CONF}

echo "Current configurations:"
grep -v "^#" ${ZK_CONF}

echo "Start ZooKeeper"
/opt/zookeeper/bin/zkServer.sh start-foreground
