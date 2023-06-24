import 'package:flutter/material.dart';
import 'package:demofirstone/sign_in.dart';
import 'package:demofirstone/forgetpass.dart';
import 'package:demofirstone/login.dart';
import 'package:demofirstone/garage_owner_login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
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
                    TextButton(
                      child: Text('User'),
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
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      child: Text('Garage Owner'),
                      onPressed: () {
                        Navigator.push(
                            context,MaterialPageRoute(builder: (contest) =>  garage_owner_Login()));
                      },
                      style: TextButton.styleFrom(
                        padding:const EdgeInsets.all(15),
                        foregroundColor: Colors.white,
                        backgroundColor:Colors.blue,
                        textStyle: const TextStyle(fontSize: 20),

                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    TextButton(
                      child: Text('Admin'),
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
