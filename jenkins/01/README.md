
### INSTRUCTIONS

1. Create a Jenkins pipeline (Jenkinsfile) that will:

  1.1. compile the Maven project **/app**

  1.2. Install the following Ansible plugins:

    - community.kubernetes or kubernetes.core
    - community.postgresql

    1.3. Run the Ansible playbook `k8s-deploy.yml`

2. Edit `k8s-deploy.yml`

  2.1 Use `kubernetes.core` plugin to deploy the following:

  - k8s/ns.yml
  - k8s/config/config.yml
  - k8s/config/secret.yml
  - k8s/deployment/app.yml
  - k8s/deployment/db.yml
  - k8s/service/app.yml
  - k8s/service/db.yml

  2.2 Use `community.postgresql.postgresql_query` plugin to execute `db/create-table.sql`

  - HINT: training-db is accessible using IP 192.168.49.2 and port 5432
