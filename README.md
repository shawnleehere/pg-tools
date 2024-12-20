# Docker Image: pg-tools

## Overview
`pg-tools` is a versatile Docker image designed to streamline tasks for developers and system administrators. Based on the lightweight `debian:bookworm-slim` image, it comes pre-installed with essential tools for database management, network diagnostics, remote access, and file handling. Whether you're managing PostgreSQL databases, troubleshooting network issues, or performing basic system tasks, this image provides a reliable and efficient environment.

## Included Tools
The following tools are pre-installed in this image:

- **PostgreSQL Client**: For interacting with PostgreSQL databases.
- **OpenSSH Client**: To establish secure shell connections.
- **IP Utilities**: Includes `ping` for network diagnostics.
- **Curl**: For transferring data with URLs.
- **Telnet**: For testing network services.
- **Wget**: A non-interactive network downloader.
- **Vim**: A powerful text editor for quick file edits.

## Usage
### Pull the Image
To pull the image from the repository, use the following command:
```bash
docker pull shawnleehere/pg-tools:latest
```

### Run the Container
You can start a container using:
```bash
docker run -it shawnleehere/pg-tools
```
This will launch a bash shell in the `/workspace` directory.

### Customizing the Image
If you need additional tools or configurations, you can extend this image with a custom `Dockerfile`:
```dockerfile
FROM <your-repo-name>/pg-tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    <your-additional-packages> \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
```

### Example Commands Inside the Container
- **Check PostgreSQL connection:**
  ```bash
  psql -h <host> -U <user> -d <database>
  ```
- **SSH to a server:**
  ```bash
  ssh user@host
  ```
- **Ping a host:**
  ```bash
  ping google.com
  ```
- **Download a file using curl:**
  ```bash
  curl -O https://example.com/file
  ```

## Development
The working directory for the container is set to `/workspace`. You can mount your local directory to this location for seamless development:
```bash
docker run -it -v $(pwd):/workspace <your-repo-name>/pg-tools
```

## Contributing
If you would like to contribute to this repository, feel free to open issues or submit pull requests. Contributions for additional tool integrations or optimizations are always welcome!

## License
This repository is distributed under the MIT License. See the `LICENSE` file for details.
