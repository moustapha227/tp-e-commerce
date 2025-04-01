import 'package:flutter/material.dart';
import 'package:tpapp/pages/log_in.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/illustration.png"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Select Your Location",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Swithch on your location to stay in tune with",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    Text(
                      "what's happening in your area",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    StaticDropdownScreen(),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 400,
                      height: 75,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 82, 189, 84),
                          borderRadius: BorderRadius.circular(17)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LogIn()));
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class StaticDropdownScreen extends StatefulWidget {
  const StaticDropdownScreen({super.key});

  @override
  State<StaticDropdownScreen> createState() => _StaticDropdownScreenState();
}

class _StaticDropdownScreenState extends State<StaticDropdownScreen> {
  String? selectedZone;
  String? selectedArea;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Zone Dropdown
        const Text(
          "Your Zone",
          style: TextStyle(fontSize: 20),
        ),
        DropdownButtonFormField<String>(
          value: selectedZone,
          hint: const Text(
            "Select a zone",
          ),
          items: const [
            DropdownMenuItem(value: "Banasree", child: Text("Banasree")),
            DropdownMenuItem(value: "Uttara", child: Text("Uttara")),
            DropdownMenuItem(value: "Dhanmondi", child: Text("Dhanmondi")),
          ],
          onChanged: (String? value) {
            setState(() {
              selectedZone = value;
            });
          },
        ),
        const SizedBox(height: 16),

        // Area Dropdown
        const Text("Your Area"),
        DropdownButtonFormField<String>(
          value: selectedArea,
          hint: const Text("Types of your area"),
          items: const [
            DropdownMenuItem(value: "Residential", child: Text("Residential")),
            DropdownMenuItem(value: "Commercial", child: Text("Commercial")),
            DropdownMenuItem(value: "Industrial", child: Text("Industrial")),
          ],
          onChanged: (String? value) {
            setState(() {
              selectedArea = value;
            });
          },
        ),
      ],
    );
  }
}
