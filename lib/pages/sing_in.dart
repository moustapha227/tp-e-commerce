import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tpapp/pages/number.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/Mask Group.png",
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Get your groceries",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "with nectar",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset("assets/Group 6798.png"),
                ),
              ),
            ),
          ),
          Text(
            "Or connect with social media",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: const Color.fromARGB(255, 108, 107, 107)),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Number()));
            },
            icon: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
              size: 30,
            ),
            label: Text(
              "Continue with Google",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                minimumSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 3),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.white,
              size: 30,
            ),
            label: Text(
              "Continue with Facebook",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 15, 108, 184),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                minimumSize: Size(250, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 3),
          ),
        ],
      ),
    );
  }
}
