import 'package:flutter/material.dart';
import 'package:tpapp/models/product_category.dart';
import 'package:tpapp/models/product_fruit.dart';
import 'package:tpapp/widgets/product_card.dart';

class ListProduct extends StatelessWidget {
  final ProductCategory productCategory;
  const ListProduct({super.key, required this.productCategory});

  @override
  Widget build(BuildContext context) {
    List<Product> products = Product.getProducts();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          productCategory.name,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
