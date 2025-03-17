import 'package:flutter/material.dart';

class MySearch extends StatelessWidget {
  const MySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color.fromARGB(255, 236, 234, 216)),
      height: 60,
      width: 490,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Search Store",
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
