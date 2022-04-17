import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/Product%20Classes/lifebuoy_sanitizer.dart';
import '../../screens/category_screen.dart';
import '../../screens/home_screen.dart';
import '../../login_registration.dart';
import 'package:loading_screen/Promotions/Unilever Products/lifebuoy_detailscreen.dart';

LifeBuoyScreen lifeBuoyScreen = LifeBuoyScreen();

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  var incdec = 1;

  int total_orders = 0;
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card(total_orders));
    });
  }

  void _removeCardWidget() {
    setState(() {
      _cardList.removeAt(total_orders);
    });
  }

  @override
  Widget _card(num) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        height: 140.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: Image(
                image: AssetImage(lifeBuoySanitizer.Lifebuoy_img),
                width: 80.0,
                height: 80.0,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(lifeBuoySanitizer.sanitizer_description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                Text(lifeBuoySanitizer.price_lifebuoy,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                Text(lifeBuoySanitizer.price_lifebuoy,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 80.0),
                  width: 140.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                          onPressed: (){
                            setState(() {
                              if(incdec<1){
                                incdec = 1;
                              }
                              else{
                                incdec--;
                              }
                            });
                          },
                          icon: Icon(Icons.delete,color: Colors.blue,)
                      ),
                      Text('$incdec',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                          onPressed: (){
                            setState(() {
                              incdec++;
                            });
                          },
                          icon: Icon(Icons.add, color: Colors.blue,)
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: IconButton(
                onPressed: (){
                  setState(() {
                    _removeCardWidget();
                  });
                },
                icon: Icon(Icons.clear),
              ),
            ),
          ],
        ),
      ),
    );
  }


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
                  builder: (context)=>homscreen(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          backgroundColor: Colors.white,
          title: Text('My Cart',style: TextStyle(color: Colors.black),),
          actions: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text('$total_orders Items',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: _cardList,
              // Card(
              //   child: SizedBox(
              //     width: double.infinity,
              //     height: 140.0,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: <Widget>[
              //         Card(
              //           child: Image(
              //             image: AssetImage(lifeBuoySanitizer.Lifebuoy_img),
              //             width: 80.0,
              //             height: 80.0,
              //           ),
              //         ),
              //         Column(
              //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisSize: MainAxisSize.max,
              //           children: <Widget>[
              //             Text(lifeBuoySanitizer.sanitizer_description,
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 17.0,
              //               ),
              //             ),
              //             Text(lifeBuoySanitizer.price_lifebuoy,
              //               style: TextStyle(
              //                 fontWeight: FontWeight.bold,
              //                 fontSize: 17.0,
              //               ),
              //             ),
              //             Text(lifeBuoySanitizer.price_lifebuoy,
              //               style: TextStyle(
              //                 fontSize: 15.0,
              //               ),
              //             ),
              //             Container(
              //               margin: EdgeInsets.only(left: 80.0),
              //               width: 140.0,
              //               height: 40.0,
              //               decoration: BoxDecoration(
              //                 border: Border.all(color: Colors.blue),
              //                 borderRadius: BorderRadius.circular(4.0),
              //               ),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: <Widget>[
              //                   IconButton(
              //                       onPressed: (){},
              //                       icon: Icon(Icons.delete,color: Colors.blue,)
              //                   ),
              //                   Text('1',
              //                     style: TextStyle(
              //                       color: Colors.black,
              //                     ),
              //                   ),
              //                   IconButton(
              //                       onPressed: (){},
              //                       icon: Icon(Icons.add, color: Colors.blue,)
              //                   ),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //         Align(
              //           alignment: Alignment.topCenter,
              //           child: IconButton(
              //             onPressed: (){
              //               // _removeCardWidget();
              //             },
              //             icon: Icon(Icons.clear),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // ListView.builder(
              //     scrollDirection: Axis.vertical,
              //     shrinkWrap: true,
              //     itemCount: _cardList.length,
              //     itemBuilder: (context,badgeNumber){
              //       // return lifeBuoyScreen.cardList[index];
              //       return _cardList[badgeNumber];
              //     }
              //   ),

          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: _addCardWidget,
          tooltip: 'Add',
          child: Icon(Icons.add),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text('Home',style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
                ),
                icon: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>homscreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.home, color: Colors.black54,
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: Text('Categories',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                  ),
                ),
                icon: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>Category(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add_to_photos,
                    color: Colors.black54,
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: Text('Cart',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                ),
                icon: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>Cart(),
                      ),
                    );
                  },
                  icon: Badge(
                    shape: BadgeShape.circle,
                    toAnimate: true,
                    badgeColor: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                    badgeContent: Text('$total_orders'),
                    child: Icon(
                      Icons.shopping_cart_outlined, color: Colors.blue,
                    ),
                  ),
                )
            ),
            BottomNavigationBarItem(
                title: Text('Login/Register',
                  style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold
                  ),
                ),
                icon: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>LoginRegisterScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.account_circle, color: Colors.black54,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
