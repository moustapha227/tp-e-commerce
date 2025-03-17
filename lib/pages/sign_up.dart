import 'package:flutter/material.dart';
import 'package:tpapp/pages/log_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/Group.png",
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sing Up",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                          "By continuing you agree to our Termes of Service and Privacy Policy")),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 400,
                    height: 75,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 47, 129, 47),
                        borderRadius: BorderRadius.circular(17)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          "Sing Up",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have acount?",
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()));
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
