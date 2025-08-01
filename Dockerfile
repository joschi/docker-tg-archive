FROM redhat/ubi9-minimal:9.6-1754000177@sha256:0d7cfb0704f6d389942150a01a20cb182dc8ca872004ebf19010e2b622818926
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
