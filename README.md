# 🚢 Helm – Kubernetes Package Manager

## 📌 Introduction

Helm is a **package manager for Kubernetes**.  
Just like **apt** is used to install software on Linux and **npm** is used for Node.js, **Helm is used to install, upgrade, and manage applications on Kubernetes**.

A Helm package is called a **Chart**.  
A chart contains everything needed to run an application on Kubernetes:
- Deployments
- Services
- ConfigMaps
- Secrets
- Ingress
- Values (configuration)

Helm helps us deploy **complex Kubernetes applications using a single command**.


## ❓ Why Do We Need Helm?

Managing Kubernetes applications using plain YAML files becomes difficult when:

- The application has **many YAML files**
- Configuration changes for **dev, QA, prod**
- Repeated deployments
- Rollbacks are needed
- Versioning of applications is required

### Problems Without Helm 😓
- Too many YAML files to manage
- Manual edits for each environment
- No easy rollback
- Hard to reuse templates

### Benefits of Helm ✅
- Reusable templates
- Environment-specific configurations
- Easy upgrades & rollbacks
- Version control for deployments
- One command deployment

## 🧠 Simple Analogy (Easy to Remember)

### 📦 Helm Analogy (Using a Travel Booking Example ✈️)
Travel Booking Analogy

Think of deploying an application on Kubernetes like planning a trip.

- Chart → Complete travel package (flight ✈️ + hotel 🏨 + cab 🚕)
- Templates → Travel plan template (same plan reused for every traveler)
- values.yaml → Traveler preferences (destination, seat type, hotel class)
- Repository → Travel websit (MakeMyTrip / Expedia)
- Release → Booked trip (your confirmed journey)

Without Helm 😓
>> You book flight, hotel, and cab separately every time.

With Helm 😎
>> You book the entire trip in one click.

## 📦 Helm Core Concepts Explained

Helm works using a few key building blocks. Understanding these makes Helm very easy.

### 📊 What is a Chart in Helm?

A Helm Chart is a package of Kubernetes resources.

Think of a chart as a complete application definition that includes:

- Deployments
- Services
- ConfigMaps
- Secrets
- Ingress
- Configuration values

In simple words:
- Chart = Application package

### 🌐 What is a Helm Repository?

A Helm Repository is a storage location for Helm charts. It works exactly like:

- apt repo for Linux
- npm registry for Node.js
- docker hub for Docker images

In simple words:
- Repository = Chart store

### 🧩 What are Templates in Helm?

Templates are Kubernetes YAML files with placeholders. Helm uses Go templating to dynamically generate YAML based on values.

In simple words:

- Templates = Reusable Kubernetes YAML

### 🧾 What is values.yaml in Helm?

values.yaml is the configuration file for a Helm chart. It contains values that are injected into templates, such as:

- Image name & tag
- Number of replicas
- Service type
- Ports
- Environment variables

In simple words:
- values.yaml = Configuration file

### Quick One-Line Definitions:

1. <b>Chart:</b> A packaged Kubernetes application containing templates and configuration.
2. <b>Repository:</b> A central place where Helm charts are stored and shared.
3. <b>Template:</b> Kubernetes YAML files with placeholders rendered by Helm.
4. <b>values.yaml:</b> Configuration file used to customize Helm templates.
5. <b>Release:</b> A running instance of a Helm chart in a Kubernetes cluster.
6. <b>Helm:</b> A package manager that simplifies Kubernetes application deployment.


## 🧾 Helm Commands Cheat Sheet

This section lists commonly used Helm commands with simple explanations.

1. helm version
2. helm ls
3. helm create <release-name> #chart creation.
4. helm install <release-name> . #
5. helm upgrade or helm upgrade --install
6. helm rollback <release-name> <revision-no>
7. heml template . <release-name> --dry-run --debug #put the values in actual yml files.
8. helm uninstall dinner-page
9. helm history <release-name> #history of application.

Port Forwarding with Kubectl `kubectl port-forward svc/dinner-page-dinner-app 8888`

| Category            | Command                  | Example                                                        | Explanation                                       |
| ------------------- | ------------------------ | -------------------------------------------------------------- | ------------------------------------------------- |
| Version             | `helm version`           | `helm version`                                                 | Shows the installed Helm version                  |
| Create Chart        | `helm create`            | `helm create dinner-app`                                       | Creates a new Helm chart with standard structure  |
| Validate Chart      | `helm lint`              | `helm lint ./dinner-app`                                       | Validates chart syntax and best practices         |
| Render Templates    | `helm template`          | `helm template dinner-release ./dinner-app`                    | Displays Kubernetes manifests without installing  |
| Install Chart       | `helm install`           | `helm install dinner-release ./dinner-app`                     | Installs the Helm chart as a release              |
| Install (Dry Run)   | `helm install --dry-run` | `helm install dinner-release ./dinner-app --dry-run`           | Simulates installation without creating resources |
| Install with Values | `helm install -f`        | `helm install dinner-release ./dinner-app -f values.yaml`      | Installs chart using a custom values file         |
| List Releases       | `helm list`              | `helm list`                                                    | Lists all Helm releases in current namespace      |
| Release Status      | `helm status`            | `helm status dinner-release`                                   | Shows status and resources of a release           |
| Upgrade Release     | `helm upgrade`           | `helm upgrade dinner-release ./dinner-app`                     | Updates an existing Helm release                  |
| Upgrade with Values | `helm upgrade -f`        | `helm upgrade dinner-release ./dinner-app -f values-prod.yaml` | Upgrades using custom values                      |
