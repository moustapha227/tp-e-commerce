class Product {
  final String name;
  final String image;
  final String quantite;
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
      Product(
          name: "Organic Bananas",
          image: "assets/Banana.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Red Apple",
          image: "assets/Vector.png",
          quantite: "1kg, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Organic Bananas",
          image: "assets/Group 6858.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Red Apple",
          image: "assets/Vector.png",
          quantite: "1kg, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Organic Bananas",
          image: "assets/Banana.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Red Apple",
          image: "assets/Vector.png",
          quantite: "1kg, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Organic Bananas",
          image: "assets/Banana.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99",
          category: ''),
      Product(
          name: "Red Apple",
          image: "assets/Vector.png",
          quantite: "1kg, Priceg",
          price: "\$4.99",
          category: ''),
    ];
  }
}
