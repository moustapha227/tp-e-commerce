import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  final String name;
  final String image;
  late final String quantite;
  final String price;
  final String category;

  Product(
      {required this.name,
      required this.image,
      required this.quantite,
      required this.price,
      required this.category});

  static List<Product> getProducts() {
    return [
      //Fresh Fruits & Vegetable
      Product(
          name: "Organic Bananas",
          image: "assets/fruit/Banana.png",
          quantite: "7pcs, Priceg",
          price: "4.99",
          category: 'Fresh Fruits & Vegetable'),
      Product(
          name: "Red Apple",
          image: "assets/fruit/Vector.png",
          quantite: "1kg, Priceg",
          price: "4.99",
          category: 'Fresh Fruits & Vegetable'),
      Product(
          name: "Organic Bananas",
          image: "assets/fruit/Group 6858.png",
          quantite: "7pcs, Priceg",
          price: "4.99",
          category: 'Fresh Fruits & Vegetable'),
      Product(
          name: "Red Apple",
          image: "assets/fruit/Group 6858.png",
          quantite: "1kg, Priceg",
          price: "4.99",
          category: 'Fresh Fruits & Vegetable'),
      //Meat & Fish
      Product(
          name: "Beef Bone",
          image: "assets/meat/pngfuel 4.png",
          quantite: "1kg, Priceg",
          price: "4.99",
          category: 'Meat & Fish'),
      Product(
          name: "Broiler Chiken",
          image: "assets/meat/pngfuel 5.png",
          quantite: "1kg, Priceg",
          price: "4.99",
          category: 'Meat & Fish'),
      //Beverages
      Product(
          name: "Sprit can",
          image: "assets/drink/Group 6874.png",
          quantite: "325, Price",
          price: "1.50",
          category: 'Beverages'),

      //Dairy & Eggs
      Product(
          name: "Egg Chiken Red",
          image: "assets/egg/pngfuel 16.png",
          quantite: "4pcs, Price",
          price: "1.99",
          category: 'Dairy & Eggs'),
    ];
  }

  // user cart
  List<Product> _Cart = [];

  //get user card
  List<Product> get cart => _Cart;

  // add item to the card
  void addToCart(Product item) {
    _Cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _Cart.remove(item);
    notifyListeners();
  }
}
