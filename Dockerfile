# Kaniko
FROM gcr.io/kaniko-project/executor as kaniko

# Install bash and git on alpine
# Coreutils required: https://github.com/bats-core/bats-core/issues/83
FROM alpine:3.14.0
RUN apk update
RUN apk add --no-cache bash git jq coreutils

# Deploy kaniko
COPY --from=kaniko /kaniko /kaniko

# Set env variables for kaniko
ENV HOME /root
ENV USER /root
ENV PATH $PATH:/kaniko
ENV SSL_CERT_DIR /kaniko/ssl/certs
ENV DOCKER_CONFIG /kaniko/.docker/
ENV DOCKER_CREDENTIAL_GCR_CONFIG /kaniko/.config/gcloud/docker_credential_gcr_config.json

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]