FROM redhat/ubi9-minimal:9.5-1739377040@sha256:db8bf20cac0f250659f1ffbba929639dcd7e09863c20c99c5cb8f3ce8ded0497
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2024.2' && \
    pip-3 install --no-cache-dir 'tg-archive==1.2.2'
