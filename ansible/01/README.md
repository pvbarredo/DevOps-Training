

Before following the **INSTRUCTIONS** make sure you run the following:


1. Under **../demo/vm/** run the following:

  - ./vagrant-destroy.sh

2. Under **./vm/**

  - ./vagrant-up.sh

3. ansible-galaxy collection install community.docker

  - See [ansible.docker.docker_login](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_login_module.html)

  - See [ansible.docker.docker_image](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_image_module.html#ansible-collections-community-docker-docker-image-module)

  - See [ansible.docker.docker_container](https://docs.ansible.com/ansible/latest/collections/community/docker/docker_container_module.html)

4. ansible-galaxy collection install community.postgresql
  - See [community.postgresql.postgresql_query](https://docs.ansible.com/ansible/latest/collections/community/postgresql/postgresql_query_module.html)

### INSTRUCTIONS

Create an Ansible playbook that will perform the following tasks:

1. Compile and package the maven project **app**

2. Containerize the artifact to a Docker image

  2.1. Use the community.docker.docker_image module

3. Create a PostgreSQL database using docker in **db** node

  3.1. Install docker

  3.2. Run a PostgreSQL database using configuration:

      - `POSTGRES_DB=heya`

      - `POSTGRES_USER=heya`

      - `POSTGRES_PASSWORD=heyapassword`

  3.2. Expose port 5432 so application from **app01** can connect to it

  3.3. Run the **db/create-table.sql** to create the database table

4. Deploy your application to **app01** node as a Docker container

  4.1. Install docker in **app01**

  4.2. Save the containerize app as tar.gz

  4.3. Transfer the tar.gz to **app01**

  4.4. Load tar.gz as Docker image

  4.5. Run the application

5. (BONUS) Replace your playbook to push to Docker Hub instead of saving your docker image as archive file

  5.1. Also replace your deployment to pull from Docker Hub

  5.2. Use <username>/exercise-app as the name of your image when pushing to Docker Hub

### NOTE:

app01
  - host IP: 192.168.210.100
  - username: vagrant

db
  - host IP: 192.168.210.200
  - username: vagrant

Both uses **vagrant_id_rsa** to SSH

### NOTE (extended-01):
To use docker_image, you need to add this to your play:

<pre>
pre_tasks:
  - name: 'Update apt cache'
    become: true
    ansible.builtin.apt:
      update_cache: yes
      cache_valid_time: 3600

  - name: 'Install required packages for docker management using Ansible'
    become: true
    ansible.builtin.apt:
      state: present
      name:
        - python-docker
</pre>

### NOTE (extended-02):
When installing docker to app01 and db, add this to your play:

<pre>
pre_tasks:
  - name: 'Update apt cache'
    ansible.builtin.apt:
      update_cache: yes
      cache_valid_time: 3600

  - name: 'Install required packages for apt repository management using Ansible'
    ansible.builtin.apt:
      state: present
      name:
        - python-apt
        - python-pycurl
        - python3-psycopg2
        - python3-docker
</pre>

### Hint

Useful modules:

- ansible.builtin.apt
- ansible.builtin.apt_key
- ansible.builtin.apt_repository
- ansible.builtin.copy
- ansible.builtin.shell
- community.docker.docker_container
- community.docker.docker_image
- community.postgresql.postgresql_query

For BONUS:
- community.docker.docker_login
