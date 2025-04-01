import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tpapp/provider/cart_provider.dart';
import 'package:tpapp/widgets/cart_item.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartProvider>().cart;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70),
          const Text(
            "My Cart",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text("Votre panier est vide"))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      return CartItem(product: cart[index]);
                    },
                  ),
          ),
          Container(
            width: 380,
            height: 70,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 70, 169, 70),
                borderRadius: BorderRadius.circular(25)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Go to Checkout",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
