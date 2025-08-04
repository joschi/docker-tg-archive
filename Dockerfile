FROM redhat/ubi9-minimal:9.6-1754327153@sha256:aaf57d07d6e192bcb72190f9841f41501b8b3dffdc5e60db2f7a668c2513ab6b
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
