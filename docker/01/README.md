
1. Package the maven project /app using the `01-mvn-package.sh` script provided

  1.1. `./01-mvn-package.sh`

2. Containerize the app

  2.1. Create a Dockerfile inside /app

    - Use `adoptopenjdk:8-jre-hotspot` as your parent image

  2.2. Edit `02-docker-build.sh`

    - Add the docker command to build your image

    - Use `training/exercise-app` as the name of the image

  2.3. Run `02-docker-build.sh`

    - `./01-mvn-package.sh`

3. Create a bridge network

  3.1. Edit `03-create-network.sh`

    - Add the docker command to create the bridge network

    - Name your new network `training-exercise-network`

    - Use `172.55.1.0/24` as subnet

  3.2. Run `03-create-network.sh`

    - `./03-create-network.sh`

4. Create a PostgreSQL database

  4.1. Edit `04-create-volume.sh`

    - Add the docker command to create a new volume

    - Use `training-exercise-volume` as the name of the volume

  4.2. Run `04-create-volume.sh`

    - `./04-create-volume.sh`

  4.3. Edit `05-create-db.sh`

    - Add the docker command to create a new database container

    - Create a new database container using `postgres:9.6` image

    - Use `training-exercise-db` as the name of the database container

    - Map `training-exercise-volume` volume to `/var/lib/postgresql/data`

    - Set the container to use the `training-exercise-network`

    - Add the following as environment variables:

      - `POSTGRES_DB=heya`

      - `POSTGRES_USER=heya`

      - `POSTGRES_PASSWORD=heyapassword`

  4.4. Run `05-create-db.sh`

    - `./05-create-db.sh`

  4.5. Run `06-populate-db.sh`

    - `./06-populate-db.sh`

5. Run the image `training/exercise-app`

  5.1. Edit `07-run-app.sh`

    - Add the docker command to run the `training/exercise-app`

    - Use `training-exercise-app` as the name of the container

    - Set the container to use the `training-exercise-network`

    - Add the following as environment variables:

      - `DATABASE_HOST=training-exercise-db`

      - `DATABASE_PORT=5432`

      - `DATABASE_NAME=heya`

      - `DATABASE_USERNAME=heya`

      - `DATABASE_PASSWORD=heyapassword`

  5.2. Run `07-run-app.sh`

    - `./07-run-app.sh`

  5.3. Test the container

    - Open your browser to `http://172.55.1.3:8080`

6. Stop and remove the `training-exercise-app` container

  6.1. Edit `08-stop-and-remove-app.sh`

    - Add the docker commands to stop and remove the `training-exercise-app` container

  6.2. Run `08-stop-and-remove-app.sh`

    - `./08-stop-and-remove-app.sh`

7. Stop and remove the `training-exercise-db` container

  7.1. Edit `09-stop-and-remove-db.sh`

    - Add the docker commands to stop and remove the `training-exercise-db` container

  7.2. Run `09-stop-and-remove-db.sh`

    - `./09-stop-and-remove-db.sh`

8. Remove the `training-exercise-volume`

  8.1. Edit `10-remove-volume.sh`

    - Add the docker commands to remove `training-exercise-volume` volume

  8.2. Run `10-remove-volume.sh`

    - `./10-remove-volume.sh`

9. Remove the `training-exercise-network`

  9.1. Edit `11-remove-network.sh`

    - Add the docker commands to remove `training-exercise-network` network

  9.2. Run `11-remove-network.sh`

    - `./11-remove-network.sh`

10. Remove the `training/exercise-app`

  10.1. Edit `12-remove-image.sh`

    - Add the docker commands to remove `training/exercise-app` image

  10.2. Run `12-remove-image.sh`

    - `./12-remove-image.sh`

10. Check all resources has been removed

  10.1. Edit `13-check.sh`

    - Add the docker commands to check if the following has been properly removed:

        - `training/exercise-app` docker image

        - `training-exercise-network` docker network

        - `training-exercise-volume` docker volume

        - `training-exercise-db` container

        - `training-exercise-app` container
