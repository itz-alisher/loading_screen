import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_screen/Promotions/My%20Cart/final_cart.dart';
import '../../Utilities/app_colors.dart';
import 'package:loading_screen/Utilities/app_colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;

class LuxSoap extends StatefulWidget {

  @override
  _LuxSoapState createState() => _LuxSoapState();
}

class _LuxSoapState extends State<LuxSoap> {

  String soap_name = 'Lux Velvet Touch';
  String soap_price = 'Rs.41';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///For image and back button and favorate button
            Container(
              child: Stack(
                children: [
                  ///Container for place quick info
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5 + 16,
                        bottom: 20,
                        right: 32,
                        left: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rs.41",
                          style: GoogleFonts.poppins(
                              color: AppColors.darkTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),

                        SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  ///Hero Image Container
                  Container(
                    child: Hero(
                      tag: 'assets/lux_soap.jpg',
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: ClipRRect(
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/lux_soap.jpg'),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///Back button
                  Positioned(
                    top: 40,
                    left: 24,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
            ///Country detail text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Lux Velvet Touch",
                style: GoogleFonts.poppins(
                    color: AppColors.veryLightTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: FractionalOffset.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.0),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: FlatButton(
                          onPressed: (){
                            _firestore.collection('Lux').add({
                              'soap_name': soap_name,
                              'soap_price': soap_price,
                            });

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Final_Cart(),
                              ),
                            );
                          },
                          child: Text('Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                            ),
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
    );
  }
}