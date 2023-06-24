import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class Dashboard_garage_owner extends StatefulWidget {
  final token;
  const Dashboard_garage_owner({@required this.token,Key? key}) : super(key: key);

  @override
  State<Dashboard_garage_owner> createState() => _Dashboard_garage_ownerState();
}

class _Dashboard_garage_ownerState extends State<Dashboard_garage_owner> {

  late var email;
  //late var name;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map<String,dynamic> jwtDecodedToken = JwtDecoder.decode(widget.token);

    email = jwtDecodedToken['email'];
    //name = jwtDecodedToken['name'];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
            mainAxisAlignment :MainAxisAlignment.center,
            children:[
              Text(email),
              SizedBox(
                height: 30,
              ),
              Text('Welcome to পার্কিং চাই', style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 30
              ),),
            ]
        )

      )

    );
  }
}
