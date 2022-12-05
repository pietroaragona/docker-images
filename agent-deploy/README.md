
# Image used as Jenkins's agent to deploy


## In tag 2.0.0
- Ubuntu "22.04.1 LTS (Jammy Jellyfish)"
- ansible 2.13
- terraform v1.3.6
- packer 1.8.4
- vault
- kubectl v1.25.4
- helm v3.10
- helm plugins
  - cm-push 0.10.3  Push chart package to ChartMuseum
- trivy 0.35.0

## In tag 1.1.1
- Ubuntu "20.04.3 LTS (Focal Fossa)"
- ansible 2.11.5
- terraform v1.0.8
- packer 1.7.6
- vault
- kubectl v1.22.2
- helm v3.7.0+geeac838
- helm plugins
  - cm-push 0.10.0  Push chart package to ChartMuseum
- trivy 0.20.0

## In tag 1.1
- Ubuntu "20.04.3 LTS (Focal Fossa)"
- ansible 2.9.6
- terraform v1.0.7
- packer 1.7.5
- vault
- *kubectl* v1.22.2
- *helm* v3.7.0+geeac838
- *trivy* 0.19.2

## In tag 1.0
- Ubuntu 20.04
- ansible
- terraform
- packer
- vault