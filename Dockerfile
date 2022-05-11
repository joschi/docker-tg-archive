FROM redhat/ubi8-minimal:8.6
COPY requirements.txt .
RUN microdnf module enable -y python39 && \
    microdnf install -y --nodocs python39 python39-pip python39-pyyaml && \
    microdnf clean all && \
    pip-3 install --no-cache-dir -r requirements.txt
