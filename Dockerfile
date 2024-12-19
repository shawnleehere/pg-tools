FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends \
    postgresql-client \
    openssh-client \
    iputils-ping \
    curl \
    telnet \
    wget \
    vim \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
WORKDIR /workspace
CMD ["/bin/bash"]
