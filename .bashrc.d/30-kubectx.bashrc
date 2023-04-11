# -*- mode: shell-script; -*-

echo "Looking for k8s config files"
config_base=$HOME/.kube

KUBECONFIG=""

for config in $config_base/config*
do
    echo "Adding config: $config"
    KUBECONFIG=$KUBECONFIG:$config
done

export KUBECONFIG


