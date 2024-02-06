# multi-k8s
"Complex" k8s app (Express, Postgres, Redis, React)
But with changes to run tests in Travis CI and deploy to Google Cloud

In order for postgres to work correctly, you need to add a secret:
kubectl create secret generic pgpassword --from-literal PGPASSWORD=(your_password)
