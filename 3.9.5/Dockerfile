FROM eclipse-temurin:21-jre-jammy
LABEL maintainer="yeasy@github.com"

ENV ZK_VERSION=3.9.5
ENV ZOOKEEPER_HOME=/opt/zookeeper
ENV PATH=${PATH}:${ZOOKEEPER_HOME}/bin

RUN apt-get update \
    && apt-get install -y --no-install-recommends bash ca-certificates wget netcat-openbsd \
    && rm -rf /var/lib/apt/lists/* \
    && cd /opt \
    && wget -q "https://downloads.apache.org/zookeeper/zookeeper-${ZK_VERSION}/apache-zookeeper-${ZK_VERSION}-bin.tar.gz" \
    && tar xzf "apache-zookeeper-${ZK_VERSION}-bin.tar.gz" \
    && mv "/opt/apache-zookeeper-${ZK_VERSION}-bin" "${ZOOKEEPER_HOME}" \
    && cp "${ZOOKEEPER_HOME}/conf/zoo_sample.cfg" "${ZOOKEEPER_HOME}/conf/zoo.cfg" \
    && rm -f "apache-zookeeper-${ZK_VERSION}-bin.tar.gz"

COPY scripts/* /tmp/

WORKDIR ${ZOOKEEPER_HOME}

EXPOSE 2181
EXPOSE 3181
EXPOSE 4181

HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD ["/tmp/healthcheck.sh"]

CMD ["bash", "/tmp/start_zk.sh"]
