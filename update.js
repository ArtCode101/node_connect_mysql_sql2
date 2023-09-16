const mysql = require('mysql2')

const connection = mysql.createConnection({
    host : "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "item"
})

connection.connect((err)=>{
    if (err)console.log(err);
    console.log("connected");

    const query = `UPDATE item SET item='item2' WHERE id=1;`
    connection.query(query,(err,result)=>{
        if (err)console.log(err);
        console.log(result);
        connection.end()
    })

})