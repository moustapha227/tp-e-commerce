import 'package:flutter/material.dart';
import 'package:tpapp/models/product_category.dart';
import 'package:tpapp/pages/list_product.dart';

class CategoryCard extends StatelessWidget {
  final ProductCategory productCategory;
  const CategoryCard({super.key, required this.productCategory});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: productCategory.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Image.asset(
              productCategory.image,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ListProduct(productCategory: productCategory))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            productCategory.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
