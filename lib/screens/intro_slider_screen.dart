import 'package:flutter/material.dart';
import '../Utilities/intro_slider_images.dart';
import 'location_selection_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HOme();
  }
}

class HOme extends StatefulWidget {
  const HOme({Key? key}) : super(key: key);

  @override
  _HOmeState createState() => _HOmeState();
}

class _HOmeState extends State<HOme> {

  int imageNumber = 0;

  List<Images> imageBank = [
    Images(iW: Image(image: AssetImage('assets/img11.jpeg')), iN: 'Choose from a broad range of 5000+ products', iC: Colors.red),
    Images(iW: Image(image: AssetImage('assets/img22.jpeg')), iN: 'Get your order delivered within 30 minutes.', iC: Colors.red),
    Images(iW: Image(image: AssetImage('assets/img33.jpeg')), iN: 'Select your preferred payment method between cash and card payment.', iC: Colors.red),
    Images(iW: Image(image: AssetImage('assets/img44.jpeg')), iN: 'Earn rewards for every purchase and redeem them for discounts.', iC: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFFEFEFD),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 130.0,
                child: Center(
                  child: Text(
                    imageBank[imageNumber].imageName.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: imageBank[imageNumber].imageColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 300,
                  height: 80,
                  child: imageBank[imageNumber].imageWidget,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>LocationSelection(),
                              ),
                            );
                          },
                          child: Text('Skip',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: imageBank[imageNumber] == imageBank[0]
                                  ? Colors.red
                                : Color.fromRGBO(0, 0, 0, 0.4)
                              ),
                            ),
                            Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: imageBank[imageNumber] == imageBank[1]
                                      ? Colors.red
                                      : Color.fromRGBO(0, 0, 0, 0.4)
                              ),
                            ),
                            Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: imageBank[imageNumber] == imageBank[2]
                                      ? Colors.red
                                      : Color.fromRGBO(0, 0, 0, 0.4)
                              ),
                            ),
                            Container(
                              width: 8.0,
                              height: 8.0,
                              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: imageBank[imageNumber] == imageBank[3]
                                      ? Colors.red
                                      : Color.fromRGBO(0, 0, 0, 0.4)
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: (){
                            setState(() {
                              imageNumber++;
                              if(imageNumber > 3){
                                imageNumber = 3;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context)=>LocationSelection(),
                                  ),
                                );
                              }
                            });
                          },
                          icon: Icon(Icons.arrow_forward),color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}