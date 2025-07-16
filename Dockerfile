FROM redhat/ubi9-minimal:9.6-1752587672@sha256:6d5a6576c83816edcc0da7ed62ba69df8f6ad3cbe659adde2891bfbec4dbf187
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
