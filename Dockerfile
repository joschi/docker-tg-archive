FROM redhat/ubi9-minimal:9.6-1754356396@sha256:295f920819a6d05551a1ed50a6c71cb39416a362df12fa0cd149bc8babafccff
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
