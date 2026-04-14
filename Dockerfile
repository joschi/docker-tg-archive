FROM redhat/ubi9-minimal:9.7-1776104705@sha256:fe688da81a696387ca53a4c19231e99289591f990c904ef913c51b6e87d4e4df
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.1'
