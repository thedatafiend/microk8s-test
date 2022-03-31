# Simple App Deployment on MicroK8s (abbreviated)

## Install MicroK8s for your OS distribution
* Installation [link](https://microk8s.io/)
* Follow the steps to initialize the following services:
    1. dashboard
    1. dns
    1. registry
    1. istio

## Start the Dashboard
To view your local cluster once running, run the following to get the dashboard view:

```bash
microk8s dashboard-proxy
```

> **NOTE** You may need to run the commands as `root` 

## Starting and Stopping Your Local Cluster
```bash
microk8s start
microk8s stop
```

## Using the Local Image Registry
Follow the steps outlined [here](https://microk8s.io/docs/registry-built-in)

## Sample Deployment
Deploy the sample Python Flask app using the following steps (for more information, refer to the Kubernetes Blog [here](https://kubernetes.io/blog/2019/07/23/get-started-with-kubernetes-using-python/)):

1. Build the app image:
    ```bash
    docker build -t localhost:32000/hello-python:latest .
    ```

1. Push the image to the MicroK8s registry
    ```bash
    docker push localhost:32000/hello-python:latest
    ```

1. Deploy the application to the MicroK8s cluster
    ```bash
    microk8s kubectl apply -f deployment.yaml
    ```

1. Check that the pods are running
    ```bash
    microk8s kubectl get pods
    ```
