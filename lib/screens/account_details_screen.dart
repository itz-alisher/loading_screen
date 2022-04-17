import 'package:flutter/material.dart';
import 'home_screen.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          width: 565,
          height: 865,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 150),
                // color: Colors.black12,
                width: 412,
                height: 60,
                child: Center(
                  child: Icon(Icons.shopping_cart_outlined,size: 50),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 100),
                margin: EdgeInsets.only(top: 0),
                // color: Colors.red,
                width: 412,
                height: 60,
                child: Text('MyGrocery',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                color: Colors.white,
                width: 412,
                height: 480,
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.only(top: 20),
                      elevation: 5,
                      // color: Colors.white54,
                      child: SizedBox(
                        width: 340,
                        height: 430,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 12),
                              margin: EdgeInsets.only(top: 0),
                              width: 340,
                              height: 50,
                              // color: Colors.white24,
                              child: Text('Account Details',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:10, top: 25),
                              margin: EdgeInsets.only(top: 0),
                              width: 340,
                              height: 70,
                              // color: Colors.lightGreen,
                              child: Text('alishair3215@gmail.com',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:10, top: 25),
                              margin: EdgeInsets.only(top: 0),
                              width: 340,
                              height: 70,
                              // color: Colors.lightBlue,
                              child: Text('03114798235',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:10, top: 25),
                              margin: EdgeInsets.only(top: 0),
                              width: 340,
                              height: 70,
                              // color: Colors.lightBlue,
                              child: Text('National Textile University, Faisalabad.',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left:10, top: 25),
                              margin: EdgeInsets.only(top: 0),
                              width: 340,
                              height: 70,
                              // color: Colors.lightBlue,
                              child: Text('No. of orders: 10',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30.0),
                              width: 240,
                              height: 50,
                              // color: Colors.lightGreen,
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => homscreen()));
                                },
                                child: Text('HOME',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}