import { Client, ClientConfig } from "pg";

const clientConfig: ClientConfig = {
  host: "localhost",
  port: 5432,
  user: "postgres",
  password: "password",
  database: "postgres",
};
const client = new Client(clientConfig);
client.connect();
const query = `select * from employee_schema.employee_master`;

client.query(query, (err, res) => {
  if (!err) {
    console.log("Retrieving Results");
    console.log(res.rows);
  } else {
    console.log(err.message);
  }
  client.end();
});
