# complex-fib
"Complex" k8s app (Express, Postgres, Redis, React)

In order for postgres to work correctly, you need to add a secret:
kubectl create secret generic pgpassword --from-literal PGPASSWORD=(your_password)
