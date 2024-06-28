# Mise en place d’un cluster Kubernetes avec intégration CI/CD et monitoring

## Description du projet

Ce projet de fin d'étude consiste à mettre en place une infrastructure moderne, flexible et évolutive pour la gestion des applications containerisées. L'objectif est d'automatiser le déploiement, d'assurer la livraison continue de nouvelles fonctionnalités et de surveiller la santé et les performances des applications déployées. Ce projet se concentre sur trois axes principaux : la mise en place d'un cluster Kubernetes, l'intégration CI/CD et le monitoring du cluster.

## Table des matières

- [Prérequis](#prérequis)
- [Installation](#installation)

## Prérequis

- Docker
- Kubernetes
- kubeadm
- Helm
- Git
- Docker Hub (avec un dépôt privé)
- Prometheus
- Grafana
- Alertmanager

## Installation

### 1. Cloner le dépôt

```bash
git clone https://github.com/votre-utilisateur/votre-repo.git
cd PFE
```
### 2. Configuration du cluster Kubernetes

- Installer Kubernetes avec kubeadm et configurer le cluster avec 1 nœud maître et 2 nœuds travailleurs.
- Installer Containerd comme runtime de conteneur.

### 3. Déploiement de l'application

- Construire et pousser l'image Docker dans le dépôt privé Docker Hub.

```bash
docker build -t billane/demo:latest .
docker push billane/demo:latest
```

### 4.Déployer l'application sur le cluster Kubernetes.

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
### 5. Mise en place de la CI/CD
#### CI
Configurer GitHub Actions pour automatiser le processus de build et de déploiement.
#### CD
- Installer Argo CD
- Configurer le file Application.yaml
### 6. Configuration du monitoring
Déployer Prometheus, Grafana et Alertmanager sur le cluster Kubernetes.
```bash
helm install prometheus stable/prometheus
helm install grafana stable/grafana
kubectl apply -f alertmanager-config.yaml
```




