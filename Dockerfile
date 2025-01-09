FROM redhat/ubi9-minimal:9.5-1736404155@sha256:b87097994ed62fbf1de70bc75debe8dacf3ea6e00dd577d74503ef66452c59d6
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'PyYAML>=5.4.1' && \
    pip-3 install --no-cache-dir 'pytz==2024.2' && \
    pip-3 install --no-cache-dir 'tg-archive==1.2.2'
