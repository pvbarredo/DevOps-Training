Remember to demo the ff. commands:

1. docker build -t training/db-test .
2. docker run -d -p 5432:5432 -e POSTGRES_PASSWORD=password training/db-test



# To connect with PGAdmin

1. Install pgadmin via https://www.pgadmin.org/download/
2. Connect using the ff. settings:
   1. host: localhost 
   2. db name: postgres
   3. port: 5432
   4. username: postgres
   5. password: mysecretpassword
