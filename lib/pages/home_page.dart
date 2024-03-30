import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

import "shop_home_page.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  String getUserDisplay(String email) {
    return email.split('@').first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Welcome, ",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey, // Light black color for "Welcome"
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: getUserDisplay(user!.email!), // Display user's name
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black, // Black color for user's name
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ),
        actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 124,
            ),
            //logo
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/logo.png',
                height: 240,
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            //title
            Text(
              'just do it',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            //sub title
            Text(
              'Brand new sneakers with premium quality',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
            //start button
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ShopHomePage())),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
