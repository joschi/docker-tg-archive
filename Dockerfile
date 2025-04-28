FROM redhat/ubi9-minimal:9.5-1745855087@sha256:e1c4703364c5cb58f5462575dc90345bcd934ddc45e6c32f9c162f2b5617681c
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
