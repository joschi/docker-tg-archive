FROM redhat/ubi8-minimal:8.4
RUN microdnf module enable -y python39 && \
    microdnf install -y --nodocs shadow-utils python39 python39-pip python39-setuptools python39-pip-wheel && \
    microdnf clean all && \
    pip-3 install --no-cache-dir --quiet virtualenv==20.9.0 && \
    useradd --user-group --create-home --shell /bin/bash tg-archive
ENV VIRTUAL_ENV=/home/tg-archive \
    PATH=/home/tg-archive/.local/bin:/home/tg-archive/bin:$PATH
USER tg-archive
RUN virtualenv /home/tg-archive && \
    source /home/tg-archive/bin/activate && \
    pip-3 install --no-cache-dir --quiet PyYAML==6.0 && \
    pip-3 install --no-cache-dir --quiet tg-archive==0.3.9
