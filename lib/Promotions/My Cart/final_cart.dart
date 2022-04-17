import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import '../../screens/category_screen.dart';
import '../../screens/home_screen.dart';
import '../../login_registration.dart';

final _firestore = FirebaseFirestore.instance;

class Final_Cart extends StatefulWidget {
  const Final_Cart({Key? key}) : super(key: key);

  @override
  _Final_CartState createState() => _Final_CartState();
}

class _Final_CartState extends State<Final_Cart> {

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
                child: Text('3 Items',
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
          child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: _firestore.collection('Lux').snapshots(),
            builder: (context,snapshot){
              if(!snapshot.hasData){
                return Center(child: CircularProgressIndicator());
              }
                final docs = snapshot.data!.docs;
                return ListView.builder(
                    shrinkWrap: true,
                  itemCount: docs.length,
                  itemBuilder: (_,i){
                    final data = docs[i].data();
                    DocumentSnapshot ds = snapshot.data!.docs[i];
                    return Column(
                      children: <Widget>[
                    // Text(data['soap_name']),
                    //     Text(data['soap_price']),
                        SingleChildScrollView(
                          child: Card(
                            child: SizedBox(
                              width: double.infinity,
                              height: 140.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Card(
                                    child: Image(
                                      image: AssetImage('assets/lux_soap.jpg'),
                                      width: 80.0,
                                      height: 80.0,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(data['soap_name'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      Text(data['soap_price'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17.0,
                                        ),
                                      ),
                                      Text(data['soap_price'],
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
                                                onPressed: (){},
                                                icon: Icon(Icons.delete,color: Colors.blue,)
                                            ),
                                            Text('1',
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            IconButton(
                                                onPressed: (){},
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
                                        FirebaseFirestore.instance.collection('Lux').doc(ds.id).delete();
                                      },
                                      icon: Icon(Icons.clear),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                );
            }
          ),
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
                        builder: (context)=>Final_Cart(),
                      ),
                    );
                  },
                  icon: Badge(
                    shape: BadgeShape.circle,
                    toAnimate: true,
                    badgeColor: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                    badgeContent: Text('3'),
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
