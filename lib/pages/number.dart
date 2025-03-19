import 'package:flutter/material.dart';
import 'package:tpapp/pages/verification_number.dart';

class Number extends StatelessWidget {
  const Number({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    "Enter your mobile number",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(color: Colors.grey),
                      )),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Mobile Number",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image.asset("assets/Group 6798.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 93, 192, 97),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => VerificationNumber()));
        },
        child: Icon(
          Icons.navigate_next,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
