import 'package:flutter/material.dart';

class ProductCategory {
  String name;
  String image;
  final Color color;

  ProductCategory(
      {required this.name, required this.image, required this.color});

  static List<ProductCategory> getCategory() {
    return [
      ProductCategory(
        name: "Fresh Fruits & Vegetable",
        image: "assets/category/pngfuel 6 (2).png",
        color: Colors.green.shade100,
      ),
      ProductCategory(
        name: "Cooking Oil & Ghee",
        image: "assets/category/Group 6835.png",
        color: Colors.amber.shade100,
      ),
      ProductCategory(
        name: "Meat & Fish",
        image: "assets/category/pngfuel 9.png",
        color: Colors.red.shade100,
      ),
      ProductCategory(
        name: "Bakery & Snacks",
        image: "assets/category/pngfuel 6 (1).png",
        color: Colors.purple.shade100,
      ),
      ProductCategory(
        name: "Dairy & Eggs",
        image: "assets/category/Group 6837.png",
        color: Colors.yellow.shade100,
      ),
      ProductCategory(
        name: "Beverages",
        image: "assets/category/pngfuel 6.png",
        color: Colors.blue.shade100,
      ),
      //repetition
      ProductCategory(
        name: "Cooking Oil & Ghee",
        image: "assets/category/Group 6835.png",
        color: Colors.amber.shade100,
      ),
      ProductCategory(
        name: "Meat & Fish",
        image: "assets/category/pngfuel 9.png",
        color: Colors.red.shade100,
      ),
    ];
  }
}
