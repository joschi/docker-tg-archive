FROM redhat/ubi9-minimal:9.5-1739420147@sha256:14f14e03d68f7fd5f2b18a13478b6b127c341b346c86b6e0b886ed2b7573b8e0
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2024.2' && \
    pip-3 install --no-cache-dir 'tg-archive==1.2.2'
