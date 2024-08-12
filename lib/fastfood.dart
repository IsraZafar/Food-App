import 'package:flutter/material.dart';
import 'package:foodapp/orderscreen.dart';

class Fastfood extends StatefulWidget {
  const Fastfood({super.key});

  @override
  State<Fastfood> createState() => _FastfoodState();
}

class _FastfoodState extends State<Fastfood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(26.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'FAST FOOD ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Image.asset('assets/images/fastfood.png'),
              SizedBox(height: 20),
              const Text(
                'Food Available',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Orderscreen(),
                    ),
                  );
                },
                child: Text("Next Order Now"),
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
