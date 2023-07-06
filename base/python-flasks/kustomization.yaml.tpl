apiVersion: kustomize.config.k8s.io/v1beta1
kind: Kustomization
resources:
- service.yml
- deployment.yml
commonLabels:
  app: myapp
images:
- name: myapp
  newName: ${IMAGE_NAME}
  newTag: ${IMAGE_TAG}
