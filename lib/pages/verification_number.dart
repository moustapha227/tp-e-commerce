import 'package:flutter/material.dart';
import 'package:tpapp/pages/select_location.dart';

class VerificationNumber extends StatelessWidget {
  const VerificationNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 40,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Enter your 4-digit code",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Code",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 320,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Resend Code",
                        style: TextStyle(fontSize: 20, color: Colors.green),
                      ))
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
              MaterialPageRoute(builder: (context) => SelectLocation()));
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
