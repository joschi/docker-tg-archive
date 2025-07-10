FROM redhat/ubi9-minimal:9.6-1752069876@sha256:11db23b63f9476e721f8d0b8a2de5c858571f76d5a0dae2ec28adf08cbaf3652
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
