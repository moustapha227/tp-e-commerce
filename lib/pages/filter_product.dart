import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool _cocolaChecked = true;
  bool _individualCollectionChecked = false;
  bool _ifadChecked = false;
  bool _kaziFarmasChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CheckboxListTile(
                    title: Text('Eggs'),
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  CheckboxListTile(
                    title: Text('Noodles & Pasta'),
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  CheckboxListTile(
                    title: Text('Chips & Crisps'),
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  CheckboxListTile(
                    title: Text('Fast Food'),
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  Text(
                    'Brand',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  CheckboxListTile(
                    title: Text('Individual Collection'),
                    value: _individualCollectionChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _individualCollectionChecked = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Cocola'),
                    value: _cocolaChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _cocolaChecked = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Ifad'),
                    value: _ifadChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _ifadChecked = value ?? false;
                      });
                    },
                  ),
                  CheckboxListTile(
                    title: Text('Kazi Farmas'),
                    value: _kaziFarmasChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _kaziFarmasChecked = value ?? false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Container(
                      width: 380,
                      height: 70,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 70, 169, 70),
                          borderRadius: BorderRadius.circular(25)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Apply Filter",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
