import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:loading_screen/Promotions/My%20Cart/final_cart.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/dove_shampoo.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/fair_lovely_cream.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/lifebuoy_detailscreen.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/lifebuoy_detailscreen2.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/lux_soap.dart';
import 'package:loading_screen/Promotions/Unilever%20Products/ponds_cream.dart';
import '../Promotions/My Cart/cart_items.dart';
import '../Promotions/Unilever Products/unilever_products.dart';
import 'category_screen.dart';
import 'intro_slider_screen.dart';
import 'account_details_screen.dart';
import '../login_registration.dart';
import 'package:loading_screen/Utilities/app_colors.dart';

ProductDetails productDetails = ProductDetails();

class homscreen extends StatelessWidget {
  const homscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Home Slider Images Container Function
  Container SliderContainer({required AssetImage assetimage}){
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: assetimage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //All Categories Cards
  Card CategoryCards({required Function() onPressed, required AssetImage assetimage, required Text text}){
    return Card(
      child: SizedBox(
        width: 122,
        height: 140,
        child: FlatButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: assetimage,
                radius: 40,
              ),
              text,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('MP GrocerApp',style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.location_on,color: Colors.black,),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 90.0),
              child: Text('MENU',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: IconButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>homscreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.home,
                    size: 20,
                  ),
                  color: Colors.red
            ),
              title: Text('HOME'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>Category(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.add_to_photos,
                    size: 20,
                  ),
                  color: Colors.red
              ),
              title: Text('CATEGORY'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>homscreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.mail,
                    size: 20,
                  ),
                  color: Colors.red
              ),
              title: Text('CONTACT'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>LogIn(),
                      ),
                    );
                  },
                  icon: Icon(Icons.account_box_outlined,
                    size: 20,
                  ),
                  color: Colors.red
              ),
              title: Text('ACCOUNT'),
            ),
            ListTile(
              leading: IconButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=>HOme(),
                      ),
                    );
                  },
                  icon: Icon(Icons.login,size: 20,),
                  color: Colors.red),
              title: Text('LOGOUT'),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: 400,
              height: 640,
              // color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      elevation: 0.0,
                      margin: EdgeInsets.only(top: 3),
                      // color: Colors.black26,
                      child: SizedBox(
                        child: ListView(
                          children: [
                            CarouselSlider(
                              items: [
                                //1st Image of Slider
                                SliderContainer(
                                  assetimage: AssetImage('assets/images.jpg'),
                                ),

                                //2nd Image of Slider
                                SliderContainer(
                                  assetimage: AssetImage('assets/card2.jpg'),
                                ),

                                //3rd Image of Slider
                                SliderContainer(
                                  assetimage: AssetImage('assets/card3.jpg'),
                                ),

                                //4th Image of Slider
                                SliderContainer(
                                  assetimage: AssetImage('assets/card4.jpg'),
                                ),

                                //5th Image of Slider
                                SliderContainer(
                                  assetimage: AssetImage('assets/card5.jpg'),
                                ),

                              ],

                              //Slider Container properties
                              options: CarouselOptions(
                                height: 200.0,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration: Duration(milliseconds: 800),
                                viewportFraction: 0.8,
                              ),
                            ),
                          ],
                        ),
                        width: 390,
                        height: 200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Shop by Category',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20.0,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Category()));
                          },
                          child: Text('View All',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      width: double.infinity,
                      height: 300,
                      // color: Colors.black26,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              // Row 1 contains promotions, pharmacy and Beverages
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/promotions.png'),
                                text: Text('Promotions',
                                ),
                              ),
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/pharmacy.png'),
                                text: Text('Pharmacy'),
                              ),
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/beverages.jpg'),
                                text: Text('Beverages'),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              // Row 1 contains new arrivals, fruits & vegetables and household supplies
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/new_arrival.png'),
                                text: Text('New Arrivals'),
                              ),
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/fruits_vegatables.jpg'),
                                text: Text('Fruits & Vegetables'),
                              ),
                              CategoryCards(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context)=>Category(),
                                    ),
                                  );
                                },
                                assetimage: AssetImage('assets/household_supplies.jpg'),
                                text: Text('Household Supplies'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Recommended for you',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
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
                                              image: AssetImage('assets/lifebuoy_handwash.jpg'),
                                            ),
                                          ),
                                          Text('Rs. 300',
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
                                              border: Border.all(
                                                  color: Colors.blue
                                              ),
                                            ),
                                            child: Text('450 ml',
                                              textAlign: TextAlign.center,
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
                                                // do something
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('Home',style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
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
                  Icons.home, color: Colors.blue,
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