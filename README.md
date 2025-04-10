
# Terraform + Docker + Nginx Assignment

This project demonstrates the use of **Terraform** to provision infrastructure and run a basic **Nginx** web server inside a **Docker** container.

---

## 📁 Project Structure

- `main.tf` – Terraform configuration file.
- `html/index.html` – Custom HTML file served by Nginx.

---

## 🚀 What It Does

- Uses Terraform with the Docker provider.
- Pulls the official Nginx Docker image.
- Binds the container's port `80` to `localhost`.
- Mounts a custom `index.html` file from the host to the container.
- Starts a Docker container running Nginx to serve the web page.

---

## ✅ Result

Once Terraform is applied, a Docker container is created running Nginx, which serves a web page that says:




