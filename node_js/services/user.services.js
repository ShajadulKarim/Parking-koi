const UserModel = require("../model/user.model");
<<<<<<< HEAD
const jwt = require("jsonwebtoken");
=======
//const jwt = require("jsonwebtoken");
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994
class UserServices{
 
    static async registerUser(name,address,contact_number,parking_space_number,per_hour_cost,extra_cost,email,password){
        try{
                //console.log("-----Email --- Password-----",email,password);
                
                const createUser = new UserModel({name,address,contact_number,parking_space_number,per_hour_cost,extra_cost,email,password});
                return await createUser.save();
        }catch(err){
            throw err;
        }
    }
    //static async getUserByEmail(email){
       // try{
            //return await UserModel.findOne({email});
       // }catch(err){
           // console.log(err);
        //}
   // }
<<<<<<< HEAD
    static async checkUser(email){
        try {
           return await UserModel.findOne({email});
        } catch (error) {
            throw error;
        }
    }
    static async generateAccessToken(tokenData,JWTSecret_Key,JWT_EXPIRE){
        return jwt.sign(tokenData, JWTSecret_Key, { expiresIn: JWT_EXPIRE });
    }
=======
    //static async checkUser(email){
       // try {
       //     return await UserModel.findOne({email});
        //} catch (error) {
          //  throw error;
       // }
    //}
    //static async generateAccessToken(tokenData,JWTSecret_Key,JWT_EXPIRE){
      //  return jwt.sign(tokenData, JWTSecret_Key, { expiresIn: JWT_EXPIRE });
    //}
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994
}
module.exports = UserServices;