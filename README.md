# multi-k8s
"Complex" k8s app (Express, Postgres, Redis, React)
But with changes to run tests in Travis CI and deploy to Google Cloud.

In order for postgres to work correctly, you need to add a secret:
kubectl create secret generic pgpassword --from-literal PGPASSWORD=(your_password)

You dont need to login again in deploy.sh file because you will already be logged in the travis.yml.
$GIT_SHA is used to indicate docker build versions (Easier to debug, solves the problem of the "latest" tag)