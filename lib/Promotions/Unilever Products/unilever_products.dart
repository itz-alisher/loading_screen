import 'package:flutter/material.dart';
import 'package:loading_screen/Promotions/My%20Cart/cart_items.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/ponds_cream.dart';
import '../../screens/category_screen.dart';
import 'Product Classes/lifebuoy_sanitizer.dart';
import 'dove_shampoo.dart';
import 'fair_lovely_cream.dart';
import 'lifebuoy_detailscreen.dart';
import 'lifebuoy_detailscreen2.dart';
import 'lux_soap.dart';

LifeBuoySanitizer lifeBuoySanitizer = LifeBuoySanitizer();

class Unilever extends StatefulWidget {
  const Unilever({Key? key}) : super(key: key);

  @override
  _UnileverState createState() => _UnileverState();
}

class _UnileverState extends State<Unilever> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context)=>Category(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Promotions'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>LifeBuoyScreen(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage(lifeBuoySanitizer.Lifebuoy_img),
                                ),
                              ),
                              Text(lifeBuoySanitizer.price_lifebuoy,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                lifeBuoySanitizer.sanitizer_description,
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text(lifeBuoySanitizer.quantity_lifebuoy,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context)=>Cart(),
                                      ),
                                    );
                                  },
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>LifeBuoyScreen2(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/lifebuoy_handwash.jpg'),
                                ),
                              ),
                              Text('Rs. 582',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'Lifebuoy Hand Wash Refill Mild Care with...',
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text('1 L',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>DoveShampoo(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/dove_shampo.jpg'),
                                ),
                              ),
                              Text('Rs. 405',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'Dove Shampoo Hair Fall Rescue',
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text('360 ml',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>LuxSoap(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/lux_soap.jpg'),
                                ),
                              ),
                              Text('Rs. 41',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'Lux Velvet Touch',
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text('70 gm',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>FairLovelySoap(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/fair_lovely_soap.jpg'),
                                ),
                              ),
                              Text('Rs. 219',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'Fair & Lovely Crystal Bright Beauty Cream',
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text('25 gm',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      child: SizedBox(
                        width: double.infinity,
                        height: 380,
                        child: FlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context)=>Unilever(),
                              ),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>PondsCream(),
                                    ),
                                  );
                                },
                                child: Image(
                                  image: AssetImage('assets/ponds_tone.jpg'),
                                ),
                              ),
                              Text('Rs. 285',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(
                                'Ponds Tone UP Milk Cream',
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: double.infinity,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                ),
                                child: Text('50 gm',textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                child: FlatButton(
                                  color: Colors.green,
                                  onPressed: (){},
                                  child: Text('Add to Cart'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
