
1. Containerize the maven project /app and publish it to your Docker Hub account

  1.1 Use <username>/exercise-app as the name of the image

2. Create a new Kubernetes namespace `training`

    2.1 Update ns.yml

3. Create a new deployment spec for <username>/exercise-app

    3.1. Update deployment/app.yml

    3.2. Externalize your database configuration using `config/config.yml` and `config/secret.yml`

4. Create a service that will expose your deployment using a load balancer

    4.1. Update service/app.yml

5. Apply the following
    - `ns.yml`,

    - `config/config.yml`
    - `config/secret.yml`    

    - `deployemnt/db.yml`
    - `service/db.yml`

6. Once you have the database running, run

`kubectl exec -i --namespace=training training-db -- psql -h localhost -U heya -W < db/create-table.sql`

7. Apply the following

    - `deployment/app.yml`
    - `service/app.yml`
