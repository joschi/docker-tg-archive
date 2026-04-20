FROM redhat/ubi9-minimal:9.7-1776645941@sha256:175bafd5bc7893540ed6234bb979acfe3574fd6570e6762bbc527c757f854cea
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.1'
