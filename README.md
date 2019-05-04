# Debian 9 (Stretch-Slim) 

## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull cleveritcz/debian9-slim`
  3. Run a container from the image: `docker run --detach --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro cleveritcz/debian9-slim`
