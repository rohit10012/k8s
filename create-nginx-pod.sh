#!/bin/bash

# Step 1: Create a YAML file
cat <<EOF >nginx-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
spec:
  containers:
    - name: nginx
      image: nginx
EOF

# Step 2: Apply the YAML file
kubectl apply -f nginx-pod.yaml

# Step 3: Verify the pod
kubectl get pods

# Step 4: Access the Nginx pod
kubectl port-forward nginx-pod 8080:80
