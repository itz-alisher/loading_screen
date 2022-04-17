import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_screen/Promotions/My%20Cart/final_cart.dart';
import '../Promotions/My Cart/cart_items.dart';
import '../Promotions/Unilever Products/unilever_products.dart';
import 'home_screen.dart';
import '../login_registration.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Category(),
    );
  }
}


class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('Shop by Category'),
        leading: IconButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>homscreen(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Promotions',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Card(
                    child: SizedBox(
                      width: 122,
                      height: 140,
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
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/unilever.png'),
                              radius: 40,
                            ),
                            Text('Unilever',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 122,
                      height: 140,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>Category(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/reckitt.png'),
                              radius: 40,
                            ),
                            Text('Reckitt',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 122,
                      height: 140,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>Category(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/loreal.jpg'),
                              radius: 40,
                            ),
                            Text('Loreal',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: SizedBox(
                      width: 122,
                      height: 140,
                      child: FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context)=>Category(),
                            ),
                          );
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/pepsi.png'),
                              radius: 40,
                            ),
                            Text('PepsiCo.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('New Arrivals',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/promotions.png'),
                            radius: 40,
                          ),
                          Text('Promotions',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/pharmacy.png'),
                            radius: 40,
                          ),
                          Text('Pharmacy',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/beverages.jpg'),
                            radius: 40,
                          ),
                          Text('Beverages',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Pharmacy',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/otc_medicine.jpg'),
                            radius: 40,
                          ),
                          Text('OTC Medicines',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/prescription_medicine.jpg'),
                            radius: 40,
                          ),
                          Text('Prescription Medicine',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/health_equipment.jpg'),
                            radius: 40,
                          ),
                          Text('Health Equipment',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Fruits & Vegetables',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/fruits.jpg'),
                            radius: 40,
                          ),
                          Text('Fruits',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/vegetables.jpg'),
                            radius: 40,
                          ),
                          Text('Vegetables',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/juices.jpg'),
                            radius: 40,
                          ),
                          Text('Fresh Juices',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Beverages',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/soft_drinks.jpg'),
                            radius: 40,
                          ),
                          Text('Soft Drinks',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/water.jpg'),
                            radius: 40,
                          ),
                          Text('Water',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/tea_coffee.jpg'),
                            radius: 40,
                          ),
                          Text('Tea & Coffee',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Household Supplies',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            Row(
              children: <Widget>[
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/household_essentials.jpg'),
                            radius: 40,
                          ),
                          Text('Household Essentials',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/laundry.jpg'),
                            radius: 40,
                          ),
                          Text('Laundry',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: 122,
                    height: 140,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=>Category(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/dish_wash.jpg'),
                            radius: 40,
                          ),
                          Text('Dishwashing',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
                    color: Colors.blue,
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
                  color: Colors.blue,
                ),
              )
          ),
          BottomNavigationBarItem(
              title: Text('Cart',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),
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
                    Icons.shopping_cart_outlined, color: Colors.black54,
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
    );
  }
}