import 'package:flutter/material.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.15,
        width: size.width,
        color: const Color.fromARGB(255, 236, 234, 216),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/2771 1.png",
                  height: 110,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Fresh Vegetables",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Get Up To 40% OFF",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  "assets/3698 1.png",
                  height: 35,
                ),
              )
            ],
          ),
        ));
  }
}
