import 'package:flutter/material.dart';
import 'package:foodapp/login%20screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to The Fastest Food Delivery Service!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              Image.asset('assets/images/fooddeliver.png'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginscreen(),
                    ),
                  );
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
