import 'package:flutter/material.dart';
import 'intro_slider_screen.dart';
import 'dart:async';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),
          ()=>Navigator.push(
        context,
        MaterialPageRoute(builder:
            (context) => HOme(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 242, 221, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Icon(
                //   Icons.local_grocery_store,
                //   color: Colors.white,
                //   size: 50.0,
                // ),
                // Text('MP GrocerApp',
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 40.0,
                //     fontFamily: 'Bebas Neue',
                //   ),
                // )
                Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ],
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 4,
            ),
          ],
        ),
      ),
    );
  }
}
