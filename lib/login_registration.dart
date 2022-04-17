import 'package:flutter/material.dart';
import 'package:loading_screen/screens/registration_screen.dart';
import 'screens/login_screen.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Image.asset('assets/logo.png'),
              height: 120.0,
            ),
            // Text(
            //   'MyGrocery',
            //   style: TextStyle(
            //     fontSize: 45.0,
            //     fontWeight: FontWeight.w900,
            //     color: Colors.black54,
            //   ),
            // ),
            SizedBox(
              height: 48.0,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              elevation: 5.0,
              color: Colors.orangeAccent,
              child: FlatButton(
                child: Text('Log In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>LoginScreen(),
                    ),
                  );
                },
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0),
              ),
              elevation: 5.0,
              color: Colors.orangeAccent,
              child: FlatButton(
                child: Text('Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>RegistrationScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

