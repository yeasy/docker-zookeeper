# Zookeeper image
# github.com/yeasy/docker-zookeeper

# ZOOKEEPER_HOME=/opt/zookeeper
# Add $ZOOKEEPER_HOME/bin to the $PATH.
# workdir is set to $ZOOKEEPER_HOME

FROM anapsix/alpine-java:8
MAINTAINER <yeasy@github.com>

ENV ZK_VERSION=3.5.7
ENV ZOOKEEPER_HOME=/opt/zookeeper

# zk config is at /opt/zookeeper/conf/zoo.cfg
# Only for testing, as kafka already include a zookeeper
RUN cd /opt \
		&& wget http://apache.cs.utah.edu/zookeeper/zookeeper-${ZK_VERSION}/apache-zookeeper-${ZK_VERSION}-bin.tar.gz \
        && tar xzf apache-zookeeper-${ZK_VERSION}-bin.tar.gz -C /opt \
        && mv /opt/apache-zookeeper-${ZK_VERSION}-bin ${ZOOKEEPER_HOME} \
        && cp /opt/zookeeper/conf/zoo_sample.cfg ${ZOOKEEPER_HOME}/conf/zoo.cfg

COPY scripts/* /tmp/

WORKDIR $ZOOKEEPER_HOME

# can call your customized command here
HEALTHCHECK --interval=5m --timeout=3s --start-period=1s --retries=3 \
 CMD exit 0

# Start a zk service for the kafka to use
#CMD ["bash", "/tmp/start_zk.sh"]
