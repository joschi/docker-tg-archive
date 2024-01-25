FROM redhat/ubi9-minimal:9.3-1552
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2023.3.post1' && \
    pip-3 install --no-cache-dir 'tg-archive==1.1.3'
