var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_db"
});
// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});
function start() {
  inquirer
    .prompt({
      name: "introBamazon",
      type: "rawlist",
      message: "Welcome to Bamazon! ",
      choices: ["Show me products", "This is stupid, self destruct"]
    })
    .then(function(answer) {
      if (answer.introBamazon === "Show me products") {
        showProducts();
      } else {
        selfDestruct();
      }
    });
}
// function showProducts() {
//   console.log("These are all your choices!")
//   con.connection.query("SELECT * FROM products"), function(err, res) {
//     if (err) throw err;

//     console.log(res);
//     connection.end();

//   }
// };
// function selfDestruct() {
//   console.log("self destruct commencing...");
//   console.log("self destruct complete, have a nice day!");
// }
