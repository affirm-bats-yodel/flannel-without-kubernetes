# flannel-without-kubernetes

Setup Flannel CNI without Kubernetes

## 1. Setup

### 1.1. CNI (Container Network Interface) Plugins

> [!INFO]
>
> You can execute an ansible playbook using: [./playbooks/download-cni-plugins/playbook.yml](./playbooks/download-cni-plugins/playbook.yml)

1. Download a Release from: https://github.com/containernetworking/plugins
2. **VERIFY A CHECKSUM IS MET** using: `sha256sum --check` or `sha512sum --check`
3. `sudo mkdir -p /opt/cni/bin`
4. Decompress downloaded `*.tgz` file to `/opt/cni/bin`

### 1.2. Install ETCD

### 1.3. Install Flannel
