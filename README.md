# kaniko-alpine

Kaniko based on Alpine with bash,git,jq and coreutils included.

[kaniko](https://github.com/GoogleContainerTools/kaniko) is a tool to build container images from a Dockerfile, inside a container or Kubernetes cluster.

kaniko doesn't depend on a Docker daemon and executes each command within a Dockerfile completely in userspace. This enables building container images in environments that can't easily or securely run a Docker daemon, such as a standard Kubernetes cluster.

### Credits
[kaniko-alpine](https://github.com/Pernod-Ricard/kaniko-alpine)