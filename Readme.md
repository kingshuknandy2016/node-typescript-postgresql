<html><center><h1>Basic Node Typescript Project</h1></center></html>

![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

# Table on Contents <!-- omit in toc -->

- [Quick Start](#quick-start)
- [Database Setup using Docker](#database-setup-using-docker)
- [Table Creation and Data-seeding](#table-creation-and-data-seeding)
- [Different Database Design](#different-database-design)
  - [Employee Management Database Design](#employee-management-database-design)

## Quick Start

- Install the dependencies

```cmd
  npm install
```

- Start the app in dev mode

```cmd
   npm run start:dev
```

- Builds the app at build, cleaning the folder first.

```cmd
   npm run build,
```

- Start the app in production

```cmd
npm run start

```

## Database Setup using Docker

Get your application DB up. Ensure that you have docker installed. We are using **Postgres Docker container** as the Database

- Pull the PostgreSQL Docker Image

  ```cmd
  docker pull postgres
  ```

- Run the PostgreSQL Container

  ```cmd
  docker run --name postgres-db -p 5432:5432 -e POSTGRES_PASSWORD=password -d postgres
  ```

- Connect to the PostgreSQL Container

  ```cmd
  docker exec -it postgres-db psql -U postgres
  ```

## Table Creation and Data-seeding

Create the table and seed random data into it

```cmd
  npm run migrate:initialize
```

Delete the table

```cmd
  npm run migrate:all-delete
```

If you want to create new migration, execute the following command

```cmd
node node_modules/db-migrate/bin/db-migrate create migration-name --sql-file
```

And then update the up sql file with the database statements

## Different Database Design

### Employee Management Database Design

**Step A : Identify the Entities and their relationship**

- **_Employee_** has name , email ,contact number, designation, role
- Every employee is associated with a **_Business Unit_**

**Step B : Create the ERD**
![Employee Management ERD](docs/images/Blank%20diagram.jpeg)

**Step C: Export the ERD as plsql statements**

- [Table Creation Scripts](/migrations/sqls/20240108072337-initialize-up.sql)
- [Data Seeding Scripts](/migrations/sqls/20240108083327-seed-data-up.sql)
