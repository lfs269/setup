#!/bin/bash

mkdir flux kustomize helm

cd flux

mkdir base staging production

cat > base/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Deployment Manifests which are Synced by Flux to Deploy to a Kubernetes Environment.

Example of the resources you could add here,

Sources: 
  - GitRepository 
  - HelmRepository 
  - Bucket 

Deployment: 
  - HelmRelease 
  - Kustomization (Flux App Deployment)

Notification: 
  - Alert 
  - Provider
  - Receiver 

Image Automation: 
  - ImageRepository
  - ImagePolicy
  - ImageUpdateAutomation

EOF

cat > staging/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Kustomize Overlays for staging environemnt to flux sync  manifests defined in ../base.
If you add a patch file, ensure you update kustomization.yaml accordingly.
EOF

cat > production/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Kustomize Overlays for staging environemnt to  manifests flux sync  defined in ../base.
If you add a patch file, ensure you update kustomization.yaml accordingly.
EOF


cat > staging/kustomization.yaml <<EOF
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- ../base
EOF


cat > production/kustomization.yaml <<EOF
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- ../base
EOF

cd ../kustomize

mkdir base staging production 

cat > base/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Kubernetes Manifests YAML.  

Examples of resources that you would add here, 
  - Deployment 
  - Service 
  - StatefulSet 
  - DaemonSet 
  - Job
  - CronJob  
  - PersistentVolumeClaim

In fact it could be any resource that you would apply to kubernetes. 

EOF

cat > staging/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Kustomize Overlays for staging environemnt to  manifests defined in ../base. 
If you add a patch file, ensure you update kustomization.yaml accordingly. 
EOF

cat > production/README.md <<EOF
## Kubernetes Deployment Manifests
This path is to add Kustomize Overlays for staging environemnt to  manifests defined in ../base.
If you add a patch file, ensure you update kustomization.yaml accordingly.
EOF

cat > staging/kustomization.yaml <<EOF
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- ../base
EOF


cat > production/kustomization.yaml <<EOF
apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- ../base
EOF

cd ../helm
mkdir charts

cat > charts/README.md <<EOF
## Helm Charts 
Add your helm charts here. 
EOF



