az group create --name AKSDevOps --location eastus

az aks create \
    --resource-group AKSDevOps \
    --name AKSCluster \
    --node-count 1 \
    --enable-addons monitoring \
    --generate-ssh-keys

# If Kubectl is not install locally

az aks install-cli

az aks get-credentials --resource-group AKSDevOps --name 