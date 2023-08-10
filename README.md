# Roblox RCCService Docker Setup

This repo contains Dockerfiles for setting up RCCService in a Docker container.

## Usage

1. **Understanding the Dockerfile:**
   Open the Dockerfile in any IDE to understand the setup. Customize it as needed, such as configuring registry keys if required.

2. **Build the Docker Image:**
   Run the following command to build the Docker image:
   `docker build -t roblox-rcc-service .`

3. **Run the Container:**
   Customize the `docker run` command if needed, including port mappings and volumes.

   **Example with Port Mapping:**
   If RCCService is running on port `64989` and you want to map it to port `80` on your host machine, you can use:
   `docker run -it -p 80:64989 roblox-rcc-service`

## Why Use Docker for RCCService?

1. **Better Security:**
   Running RCCService in a Docker container provides an additional layer of security. It isolates the service from the host machine, reducing the risk of vulnerabilities such as the RCEs found for the different versions of RCC affecting your host machine.

## Notes

- Make sure you have Docker installed and properly configurd on your system.
- Ensure paths and settings are correct for your RCCService.

For more information on Docker, refer to the official Docker documentation.
