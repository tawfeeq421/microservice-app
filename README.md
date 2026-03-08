# E-Mart Microservices Application (DevOps Project)

This project demonstrates the deployment of a **microservices-based E-Commerce application (E-Mart)** using **Docker, Kubernetes, Jenkins CI/CD, and Nginx**.

The application is built with multiple services including **Angular frontend, Node.js API, Java API, MongoDB database, and Nginx reverse proxy**. All services are containerized and deployed on Kubernetes.

---

# Project Architecture

The system contains the following components:

• **Angular Client** – Frontend user interface
• **Node API** – Backend service for product operations
• **Java API** – Backend service for order processing
• **MongoDB** – Database for storing application data
• **Nginx** – Reverse proxy for routing traffic
• **Jenkins** – CI/CD automation for build and deployment
• **Docker** – Containerization platform
• **Kubernetes** – Container orchestration platform

---

# Project Structure

## Frontend (Angular Client)

client/

* src/
* e2e/
* angular.json
* package.json
* Dockerfile
* nginx.conf

Configuration Files:

* `.browserslistrc`
* `.editorconfig`
* `.gitignore`
* `karma.conf.js`
* `tsconfig.json`
* `tsconfig.app.json`
* `tsconfig.spec.json`
* `tslint.json`

These files manage **Angular build configuration, linting, and testing**.

---

# Backend Services

## Node API Service

nodeapi/

Files:

* Dockerfile
* Application source code
* API logic for product services

Kubernetes Files:

* `nodeapi-dep.yml`
* `nodeapi-service.yml`

---

## Java API Service

javaapi/

Files:

* Dockerfile
* Backend service implementation

Kubernetes Files:

* `javaapi-dep.yml`
* `javaapi-service.yml`

---

# Database

MongoDB is used as the primary database.

Kubernetes Files:

* `mongo-dep.yml`
* `mongo-service.yml`

---

# Frontend Deployment

Angular client is deployed using Kubernetes.

Kubernetes Files:

* `client-dep.yml`
* `client-service.yml`

---

# Nginx Reverse Proxy

Nginx is used for routing traffic to backend services.

Files:

* nginx/
* nginx.conf
* Dockerfile

---

# Database Service for Application

E-Mart database service is deployed with:

* `emart-db-dep.yml`
* `emart-service.yml`

---

# Kubernetes Deployment Files

All Kubernetes configuration files are located in:

kubernetes/

Deployment Files:

* client-dep.yml
* javaapi-dep.yml
* nodeapi-dep.yml
* mongo-dep.yml
* emart-db-dep.yml

Service Files:

* client-service.yml
* javaapi-service.yml
* nodeapi-service.yml
* mongo-service.yml
* emart-service.yml

These files define **Pods, Deployments, and Services for the application components**.

---

# CI/CD Pipeline

Jenkins is used to automate the build and deployment process.

Jenkinsfile is responsible for:

1. Pulling source code from GitHub
2. Building Docker images
3. Pushing images to Docker Registry
4. Deploying containers to Kubernetes

Pipeline File:

Jenkinsfile

---

# Docker

Each service includes a **Dockerfile** for building container images.

Docker is used to:

* Package applications
* Ensure consistent environments
* Deploy services easily in Kubernetes

---

# Deployment Steps

## 1 Clone Repository

git clone <repository-url>

cd emart-project

---

## 2 Build Docker Images

docker build -t client .

docker build -t nodeapi .

docker build -t javaapi .

---

## 3 Deploy to Kubernetes

kubectl apply -f kubernetes/

---

## 4 Verify Deployment

Check pods:

kubectl get pods

Check services:

kubectl get svc

---

# Technologies Used

* Docker
* Kubernetes
* Jenkins
* Angular
* Node.js
* Java
* MongoDB
* Nginx

---

# Author

Tawfeeq Ahmed
DevOps Engineer
