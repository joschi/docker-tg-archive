FROM redhat/ubi9-minimal:9.5-1741850109@sha256:bafd57451de2daa71ed301b277d49bd120b474ed438367f087eac0b885a668dc
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
