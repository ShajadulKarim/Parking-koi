import 'package:flutter/material.dart';
import 'package:demofirstone/sign_in.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5,
                    right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Sign in', style: TextStyle(
                          color: Color(0xff5f95d7),
                          fontSize: 27, fontWeight: FontWeight.w700
                        )),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff5f95d7),
                          child: IconButton(onPressed:(){}, icon: Icon(Icons.arrow_forward)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,MaterialPageRoute(builder: (contest) =>  Signin()));
                        },
                            child: Text('Sign Up', style: TextStyle( decoration: TextDecoration.underline,
                            fontSize: 18, color: Color(0xff5f95d7),
                        ),
                        )
                        ),
                        TextButton(onPressed: (){}, child: Text('Forgot Password', style: TextStyle( decoration: TextDecoration.underline,
                          fontSize: 18, color: Color(0xff5f95d7),
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
