# BE-DU 05 DB

---

## Dependencies

`docker` & `docker-compose` & `MongoDB Compass` need to be installed.

## Start 

1. From root folder run `sudo docker-compose up`
2. Open your Browser and go to `localhost:5050` -> pgAdmin
3. Credentials:  
   1. Email: `admin@admin.com`
   2. Password: `root`
4. Click on Servers and type password: `postgres`
5. Then `assignment_05` -> `Databases` -> `doucovani` -> `Schemas` -> `public` -> `Tables`
6. Right click on `Tables` and choose `Query Tool`
7. Then start `MongoDB Compass` 
   1. New Connection with connection string-> `mongodb://username:root@localhost:27017/`
   2. Go to `doucovani` -> `doucovani` -> `ADD DATA` -> choose frm `CSV` and load prepared data from `./mongodb/doucovani.csv`

## Access

- PostgreSQL -> localhost:5432
- PgAdmin -> localhost:5050
- MongoDB -> localhost:27017

---

## Authors

- [Michal Durik](https://github.com/miko866)

## Copyright

&copy; Michal Durik
