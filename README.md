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

### 🍕 Pizza Analogy

Think of **Kubernetes YAML files** as:
- Dough (Deployment)
- Cheese (Service)
- Toppings (ConfigMap, Secret, Ingress)

Without Helm:
👉 You prepare everything **manually every time**

With Helm:
👉 You have a **recipe (Helm Chart)**  
👉 You just say:


## 🧾 Helm Commands Cheat Sheet

This section lists commonly used Helm commands with simple explanations.

1. helm version
2. helm ls
3. helm create <release-name>
4. helm install <release-name> .
5. helm upgrade or helm upgrade --install
6. helm rollback <release-name> <revision-no>
7. heml template . <release-name> --dry-run --debug
8. helm uninstall dinner-page

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
