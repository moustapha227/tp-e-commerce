import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 60,),
            Image.asset("assets/Group.png", height: 150,
            ),
            SizedBox(height: 20,),
            Text("SignUp",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("Enter your credentials to continue",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.grey),
            ),
            Form(
              child: Column(
                children: [
                  Container(
                    color: Colors.red,
                    child: TextFormField(
                      
                    ),
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}