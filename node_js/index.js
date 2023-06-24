const app = require("./app");
const db = require('./config/db')
const UserModel = require('./model/user.model')

<<<<<<< HEAD

=======
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994
const port = 3000;

app.get('/',(req,res)=>{
    res.send("why")

});
app.listen(port,()=>{
    console.log(`Server Listening on Port http://localhost:${port}`);
})