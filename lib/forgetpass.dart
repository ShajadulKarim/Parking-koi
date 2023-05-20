import 'package:flutter/material.dart';
import 'package:demofirstone/login.dart';

class ForgetPass extends StatefulWidget {
  //const ForgetPass({Key? key}) : super(key: key);

  @override
  State<ForgetPass> createState() => _ForgetPass();
}

class _ForgetPass extends State<ForgetPass> {
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
              padding: EdgeInsets.only(left: 35, top: 90),
              child: Text('পার্কিং \nচাই', style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 54
              ),),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4,
                    right: 35, left: 35),
                child: Column(
                  children: [
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'New Password',
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
                          hintText: 'Confirm New Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                         TextButton(
                          child: Text('Reset new password'),
                           onPressed: () {
                             Navigator.push(
                                 context,MaterialPageRoute(builder: (contest) =>  MyLogin()));
                           },
                          style: TextButton.styleFrom(
                            padding:const EdgeInsets.all(15),
                            foregroundColor: Colors.white,
                            backgroundColor:Colors.blue,
                            textStyle: const TextStyle(fontSize: 20),

                          ),
                        )
                      ],
                    ),
                    ),
            )
                  ],
                ),
              ),
            );
  }
}
