
docker compose up --build

//create deployment file
kubectl create deploy northladder-node --image=northladder-assignment-node-server --port=3000 --replicas=2 --dry-run=client -o yaml > northladder-deploy.yaml


//create service file
kubectl expose deploy northladder-node --port=3000 --target-port=3000 --dry-run=client -o yaml > northladder-deploy-svc.yaml


//apply both these yamls with kubectl apply -f <file-name>

kubectl apply -f  northladder-deploy.yaml
kubectl apply -f northladder-deploy-svc.yaml



// helm create northladder
// made changes in values file as required


