import 'package:flutter/cupertino.dart';

class AppColors{
  static final lightGreenColor = Color.fromRGBO(104, 167, 175, 1);
  static final lightRedColor = Color.fromRGBO(173, 90, 74, 1);
  static final lightTextColor = Color.fromRGBO(95, 102, 97, 1);
  static final veryLightTextColor = Color.fromRGBO(170, 170, 180, 1);
  static final darkTextColor = Color.fromRGBO(34, 64, 67, 1);
  static final greyBackground = Color.fromRGBO(247, 247, 250, 1);
  static final whiteBackground = Color.fromRGBO(255, 255, 255, 1);
  static final lightblack = Color.fromRGBO(176, 176, 176, 1);
}

class ProductDetails{
  int? ProductPrice;
  String? ProductDescription;
  String? Quatity;

  ProductDetails({int? productPrice, String? productDescription, String? quatity}){
    productPrice = ProductPrice;
    productDescription = ProductDescription;
    quatity = Quatity;
  }
}