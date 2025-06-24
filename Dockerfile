FROM redhat/ubi9-minimal:9.6-1750782676@sha256:e12131db2e2b6572613589a94b7f615d4ac89d94f859dad05908aeb478fb090f
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
