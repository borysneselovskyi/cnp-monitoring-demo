# Description
In this demo I will create the Postgres cluster in a Kubernetes environment using the EDB Kubernetes operator and configure the monitoring of the cluster using Grafana dashboards.  The demo is based on the SNP Sandbox project, which can be found here: https://github.com/EnterpriseDB/cnp-sandbox/tree/main/charts/cnp-sandbox

# Prerequisites
- K8s environment (K8s, k3d, kind)
- Docker
- Helm
- Tested with K3d and kind.

k3d is a lightweight wrapper to run k3s (Rancher Lab’s minimal Kubernetes distribution) in docker.
kind is a tool for running local Kubernetes clusters using Docker container “nodes”.

# Demo

Install Helm Repository, Postgres Operator, Prometheus and Grafana Pods

```
./01_install_helm_repo.sh
```

Create the Postgres Cluster:

```
 ./02_create_cluster.sh
```

Start the Port forwarding:

```
./03_start_tunnel.sh
```

Access Grafana Dashboard 

- Open the Browser and go to http://localhost:3000
- Log in with the following credentials:

	- username: "admin"
	- password: "prom-operator"

From the Grafana interface, you can find the dashboard by selecting: Dashboards > Browse > Cloud Native PostgreSQL.

![image](https://user-images.githubusercontent.com/70379260/173578276-d42436e3-7e01-438a-948f-d8f0c7f10ec9.png)

![image](https://user-images.githubusercontent.com/70379260/173578317-e1672572-345b-44a9-9a8b-0f44dcc0892f.png)

# Delete the Demo env
To Delete the cluster run
```
./99_remove_cluster.sh
```
