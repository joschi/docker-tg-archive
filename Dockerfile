FROM redhat/ubi9-minimal:9.6-1754456323@sha256:e6b39b0a2cd88c0d904552eee0dca461bc74fe86fda3648ca4f8150913c79d0f
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
