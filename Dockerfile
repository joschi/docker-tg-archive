FROM redhat/ubi9-minimal:9.6-1745487894@sha256:21ed5a01130d3a77eb4a26a80de70a4433860255b394e95dc2c26817de1da061
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
