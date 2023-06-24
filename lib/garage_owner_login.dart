import 'package:flutter/material.dart';
import 'package:demofirstone/forgetpass.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dashboard_3.dart';
import 'package:http/http.dart' as http;
import 'config.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class garage_owner_Login extends StatefulWidget {
  const garage_owner_Login({Key? key}) : super(key: key);

  @override
  State<garage_owner_Login> createState() => _garage_owner_LoginState();
}

class _garage_owner_LoginState extends State<garage_owner_Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;
  late SharedPreferences prefs;

  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }
  void initSharedPref() async{
    prefs = await SharedPreferences.getInstance();
  }

  void owner_login() async{
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var reqBody = {
        "email":emailController.text,
        "password":passwordController.text
      };
      var response = await http.post(Uri.parse(garage_owner_login),
          headers: {"Content-Type":"application/json"},
          body: jsonEncode(reqBody)
      );
      var jsonResponse = jsonDecode(response.body);
      if(jsonResponse['status']){
        var myToken = jsonResponse['token'];
        prefs.setString('token', myToken);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard_garage_owner(token: myToken)));
      }else{
        print('Something went wrong');
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/16.png'), fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack (
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text('পার্কিং \nচাই', style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 54
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.39,
                    right: 35, left: 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){

                        },
                            child: Text('Garage Owner Log in', style: TextStyle(
                              fontSize: 25, color: Color(0xff5f95d7),
                            ),
                            )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          errorText: _isNotValidate ? "Enter Proper Info" : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          errorText: _isNotValidate ? "Enter Proper Info" : null,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Log in', style: TextStyle(
                            color: Color(0xff5f95d7),
                            fontSize: 27, fontWeight: FontWeight.w700
                        )),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff5f95d7),
                          child: IconButton(onPressed:(){
                            owner_login();
                          }, icon: Icon(Icons.arrow_forward)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(
                              context,MaterialPageRoute(builder: (contest) =>  ForgetPass()));
                        }, child: Text('Reset Password', style: TextStyle( decoration: TextDecoration.underline,
                          fontSize: 20, color: Color(0xff5f95d7),
                        ),
                        )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
