import 'package:flutter/material.dart';
import 'package:demofirstone/sign_in.dart';
import 'package:demofirstone/forgetpass.dart';
import 'package:demofirstone/login.dart';

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
          image: DecorationImage(
              image: AssetImage('assets/16.png'), fit: BoxFit.cover)),
      child: Scaffold(
        //backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            DropdownButton<String>(
              items: <String>['Admin', 'Garage Owner', 'Users']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle dropdown selection
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Handle drawer item tap for settings
                },
              ),
              ListTile(
                title: Text('Terms and Conditions'),
                onTap: () {
                  // Handle drawer item tap for terms and conditions
                },
              ),
              ListTile(
                title: Text('Offers'),
                onTap: () {
                  // Handle drawer item tap for offers
                },
              ),
              ListTile(
                title: Text('Privacy'),
                onTap: () {
                  // Handle drawer item tap for privacy
                },
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'পার্কিং \nচাই',
                style: TextStyle(color: Colors.blueGrey, fontSize: 54),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextButton(
                      child: Text('Admin'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contest) => MyLogin()));
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      child: Text('Garage Owner'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (contest) => MyLogin()));
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        textStyle: const TextStyle(fontSize: 20),
                      ),
                    )
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
