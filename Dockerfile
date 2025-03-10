FROM redhat/ubi9-minimal:9.5-1741599792@sha256:30bbd445046a3a63f5f5557a3c67dee74e3c8e7855eb0347630b020f3689823f
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2024.2' && \
    pip-3 install --no-cache-dir 'tg-archive==1.2.2'
