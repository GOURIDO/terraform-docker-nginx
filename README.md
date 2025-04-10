# Terraform + Docker + Nginx Assignment

This project demonstrates the use of **Terraform** to provision infrastructure and run a basic **Nginx** web server inside a **Docker** container.

##  Project Structure

##  What It Does

- Uses Terraform with the Docker provider.
- Pulls the official **nginx** image.
- Binds the container's port 80 to localhost.
- Mounts a custom `index.html` from the host machine to the container.
- Starts a running Nginx server that displays a custom web page.

## Result

When you run Terraform, a Docker container is created with Nginx running and serving a page that says:

> **Terraform + Docker + Nginx**  
> This page is served from a Docker container using Nginx.

##  How to Run

Make sure Docker is running and then:
1. **Ensure Docker is running** on your system.
2. Navigate to this project directory.
3. Run the following Terraform commands:

```bash
terraform init
terraform apply


