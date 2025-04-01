import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Afsar Hossen',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Inshuvo97@gmail.com',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Orders',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('My Details'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Delivery Address'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Payment Methods'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Promo Code'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Notifications'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Help'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('About'),
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  // Bouton de déconnexion
                  Container(
                    width: double.infinity, // Prend toute la largeur disponible
                    height: 75,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 207, 215, 207),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Log Out",
                        style: TextStyle(color: Colors.green, fontSize: 20),
                      ),
                    ),
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
