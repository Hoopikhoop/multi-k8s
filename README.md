# multi-k8s
"Complex" k8s app with some changes (Express, Postgres, Redis, React)

In order for postgres to work correctly, you need to add a secret:
# kubectl create secret generic pgpassword --from-literal PGPASSWORD=(your_password)
