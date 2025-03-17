class Product {
  final String name;
  final String image;
  final String quantite;
  final String price;

  Product(
      {required this.name,
      required this.image,
      required this.quantite,
      required this.price});

  static List<Product> getProducts() {
    return [
      Product(
          name: "Organic Bananas",
          image: "assets/Banana.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99"),
      Product(
          name: "Red Apple",
          image: "assets/Vector (1).png",
          quantite: "1kg, Priceg",
          price: "\$4.99"),
      Product(
          name: "Organic Bananas",
          image: "assets/Banana.png",
          quantite: "7pcs, Priceg",
          price: "\$4.99"),
      Product(
          name: "Red Apple",
          image: "assets/Vector (1).png",
          quantite: "1kg, Priceg",
          price: "\$4.99"),
    ];
  }
}
