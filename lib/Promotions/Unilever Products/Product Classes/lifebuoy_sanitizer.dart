import '../lifebuoy_detailscreen.dart';

class LifeBuoySanitizer{
  String Lifebuoy_img = 'assets/lifebuoy_handwash.jpg';
  String price_lifebuoy = 'Rs. 300';
  String sanitizer_description = 'Lifebuoy Hand Wash';
  String quantity_lifebuoy = '450 ml';

  LifeBuoySanitizer({String? img, String? price, String? description, String? quantity}){
    img = Lifebuoy_img;
    price = price_lifebuoy;
    description = sanitizer_description;
    quantity = quantity_lifebuoy;
  }
}

// class GoCart{
//   List<LifeBuoySanitizer> cart_items = [
//     LifeBuoySanitizer(
//       img: lifeBuoySanitizer.Lifebuoy_img,
//       price: lifeBuoySanitizer.price_lifebuoy,
//       description: lifeBuoySanitizer.sanitizer_description,
//       quantity: lifeBuoySanitizer.quantity_lifebuoy,
//     ),
//   ];
// }