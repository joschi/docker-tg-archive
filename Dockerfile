FROM redhat/ubi9-minimal:9.7-1778562320@sha256:12db9874bd753eb98b1ab3d840e75de5d6842ac0604fbd68c012adefe97140be
RUN microdnf install -y --nodocs python3 python3-pip && \
    microdnf clean all && \
    pip-3 install --no-cache-dir 'tg-archive==1.3.1'
