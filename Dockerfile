FROM redhat/ubi9-minimal:9.7-1762180032@sha256:2ddd6e10383981c7d10e4966a7c0edce7159f8ca91b1691cafabc78bae79d8f8
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.0'
