const router = require("express").Router();
const UserController = require('../controller/user.controller');

<<<<<<< HEAD

router.post("/register",UserController.register);
router.post("/login", UserController.login);

=======
router.post("/register",UserController.register);
//router.post("/login", UserController.login);
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994
module.exports = router;