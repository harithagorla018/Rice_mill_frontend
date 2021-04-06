import '../models/category.dart';
import '../models/item.dart';
import '../models/promotion.dart';
// import 'package:furniture_app/models/category.dart';
// import 'package:furniture_app/models/item.dart';
// import 'package:furniture_app/models/promotion.dart';

class Fake {
  static int numberOfItemsInCart = 1;

  static List<Category> categories = [
    Category('assets/icons/rice1.svg', 'Basmati Rice'),
    Category('assets/icons/rice5.svg', 'Brown Rice'),
    Category('assets/icons/rice3.svg', 'Arborio rice'),
  ];

  static List<Promotion> promotions = [
    Promotion(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: false,
      title: 'All Item Rices\nDiscount Up to',
      subtitle: '50%',
      tag: '30 April 2021',
      // imagePath: 'assets/riceitem2.jpg',
    ),
    Promotion(
      backgroundImagePath: 'assets/images/splash2.png',
      reverseGradient: true,
      title: 'Get voucher gift',
      subtitle: '\$50.00',
      caption: '*for new member\'s\nof Rice Shop',
    )
  ];

  // static List<String> trending = [
  //   'assets/images/furniture/jacalyn-beales-435629-unsplash.png',
  //   'assets/images/furniture/sven-brandsma-1379481-unsplash.png',
  // ];

  static List<String> featured = [
    'assets/riceitem1.jpg',
    'assets/riceitem2.jpg',
    'assets/riceitem3.jpg',
    'assets/riceitem4.jpg'
  ];

  static List<Item> furniture = [
    Item(
      name: 'Brown Rice',
      imagePath: 'assets/ricebag1.png',
      originalPrice: 80,
      rating: 4.5,
      discountPercent: 30,
    ),
    Item(
      name: 'Arborio rice',
      imagePath: 'assets/ricebag2.png',
      originalPrice: 140,
      rating: 4.4,
      discountPercent: 30,
    ),
    Item(
      name: 'Sona Masoori',
      imagePath: 'assets/ricebag3.jpg',
      originalPrice: 160,
      rating: 4.3,
      discountPercent: 25,
    ),
    Item(
      name: 'Basmati Rice',
      imagePath: 'assets/ricebag1.png',
      originalPrice: 140,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'Masoori Rice',
      imagePath: 'assets/ricebag2.png',
      originalPrice: 80,
      rating: 4.3,
      discountPercent: 20,
    ),
    Item(
      name: 'Red Rice',
      imagePath: 'assets/ricebag3.jpg',
      originalPrice: 80,
      rating: 4.0,
      discountPercent: 20,
    ),
  ];
}
