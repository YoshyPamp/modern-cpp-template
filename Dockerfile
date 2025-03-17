# Use a lightweight Ubuntu base image
FROM ubuntu:22.04

# Set environment variables to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install essential C++ development tools
RUN apt-get update && apt-get install -y \
    build-essential \
    ninja-build \
    cmake \
    g++ \
    clang \
    lldb \
    lld \
    valgrind \
    clang-format \
    clang-tidy \
    cppcheck \
    python3 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install Conan for dependency management
RUN pip3 install conan

# Create a non-root user with a fixed UID/GID
ARG USER_ID=1000
ARG GROUP_ID=1000
RUN groupadd -g $GROUP_ID devgroup && \
    useradd -m -u $USER_ID -g devgroup -s /bin/bash devuser

# Set working directory inside the container
WORKDIR /app

# Copy project files
COPY . /app/

# Ensure the entrypoint script has correct ownership and execution permissions
RUN chown -R devuser:devgroup /app && chmod +x /app/entrypoint.sh

# Switch to non-root user
USER devuser

# Set the entrypoint script
ENTRYPOINT ["/bin/bash", "/app/entrypoint.sh"]
