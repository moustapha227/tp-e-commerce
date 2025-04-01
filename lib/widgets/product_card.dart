import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tpapp/pages/show_product.dart';
import 'package:tpapp/provider/cart_provider.dart';
import '../models/product_fruit.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  void addToCart(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("Add this item to the cart?"),
        actions: [
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<CartProvider>().addToCart(product);
            },
            child: Text("Yes"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white70,
      ),
      //padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset(product.image, height: 80),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShowProduct(product: product))),
          ),
          SizedBox(
            height: 5,
          ),
          Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(product.quantite, style: TextStyle(color: Colors.grey)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(product.price,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () => addToCart(context),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
