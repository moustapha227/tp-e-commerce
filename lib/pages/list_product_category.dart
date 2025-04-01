import 'package:flutter/material.dart';
import 'package:tpapp/models/product_category.dart';
import 'package:tpapp/pages/list_product.dart';
import 'package:tpapp/widgets/category_card.dart';
import 'package:tpapp/widgets/search.dart';

class ListProductCategory extends StatelessWidget {
  const ListProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final Category = ProductCategory.getCategory();

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              "Find Product",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            MySearch(),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9),
                itemCount: Category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListProduct(
                            productCategory: Category[index],
                          ),
                        ),
                      );
                    },
                    child: CategoryCard(productCategory: Category[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
