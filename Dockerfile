FROM redhat/ubi9-minimal:9.5-1747111267@sha256:a50731d3397a4ee28583f1699842183d4d24fadcc565c4688487af9ee4e13a44
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
