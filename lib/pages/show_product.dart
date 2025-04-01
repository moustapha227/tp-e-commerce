import 'package:flutter/material.dart';
import 'package:tpapp/models/product_fruit.dart';

class ShowProduct extends StatefulWidget {
  final Product product;
  const ShowProduct({super.key, required this.product});

  @override
  State<ShowProduct> createState() => _ShowProductState();
}

class _ShowProductState extends State<ShowProduct> {
  int quantityCount = 0;
  bool isFavorite = false; // État pour gérer le favori

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });

    if (isFavorite) {
      print("${widget.product.name} ajouté aux favoris");
    } else {
      print("${widget.product.name} retiré des favoris");
    }
  }

  void decrementQuantity() {
    setState(() {
      if (quantityCount > 0) quantityCount--;
    });
  }

  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              widget.product.image,
              fit: BoxFit.cover,
              height: 300,
              width: 500,
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.product.name,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    size: 30,
                    color: isFavorite ? Colors.green : Colors.grey,
                  ),
                  onPressed: toggleFavorite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.product.quantite,
                style: const TextStyle(fontSize: 17),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: decrementQuantity,
                      icon: const Icon(Icons.remove, color: Colors.grey),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          quantityCount.toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: incrementQuantity,
                      icon: const Icon(Icons.add, color: Colors.green),
                    ),
                  ],
                ),
                Text(
                  widget.product.price,
                  style: const TextStyle(
                      fontSize: 27, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
