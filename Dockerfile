FROM redhat/ubi9-minimal:9.5-1733767867@sha256:dee813b83663d420eb108983a1c94c614ff5d3fcb5159a7bd0324f0edbe7fca1
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2024.2' && \
    pip-3 install --no-cache-dir 'tg-archive==1.2.2'
